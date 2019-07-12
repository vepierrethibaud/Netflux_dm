<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Contracts\Translation\TranslatorInterface;

use App\Entity\Serie;
use App\Entity\Categorie;
use App\Form\SerieType;

/**
 * @Route("/serie")
 */
class SerieController extends AbstractController
{
    /**
     * @Route("/", name="series")
     */
    public function index(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $serie = new Serie();
        $form = $this->createForm(SerieType::class, $serie);

        $form->handleRequest($request);
        if($form->isSubmitted()){

            $affiche = $form['affiche']->getData(); // Je dois récupérer la photo comme ça maintenant parce qu'elle n'est plus associée à l'entité

            if($affiche) { // Vu que la photo est facultative, je test d'abord si elle a été uploadée
                $fileName = uniqid().'.'.$affiche->guessExtension();

                $affiche->move(
                    'uploads',
                    $fileName
                );

                $serie->setAffiche($fileName);
            }

            $em->persist($serie);
            $em->flush();
            $this->addFlash('success', 'Serie ajoutée');
        }

        $series = $em->getRepository(Serie::class)->findAll();

        return $this->render('serie/index.html.twig', [
            'series'     => $series,
            'add_serie'  => $form->createView()
        ]);
    }

    /**
     * @Route("/{id}", name="serie")
     */
    public function serie(Serie $serie, Request $request){
        $em = $this->getDoctrine()->getManager();

        $form = $this->createForm(SerieType::class, $serie);

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){

            $affiche = $form['affiche']->getData();

            if($affiche) {
                $fileName = uniqid().'.'.$affiche->guessExtension();

                $affiche->move(
                    'uploads',
                    $fileName
                );

                if(!empty($serie->getPhoto())){ // Si l'utilisateur a déjà une photo, je la supprime du serveur
                    unlink('uploads/'.$serie->getPhoto());
                }

                $serie->setPhoto($fileName);
            }

            $em->persist($serie);
            $em->flush();

            $this->addFlash('success', 'Utilisateur mis à jour');
        }

        return $this->render('serie/serie.html.twig', [
            'serie'      => $serie,
            'edit_form' => $form->createView()
        ]);
    }

    /**
     * @Route("/delete/{id}", name="serieDelete")
     */
    public function serieDelete(Serie $serie){
        $em = $this->getDoctrine()->getManager();
        $em->remove($serie);
        $em->flush();

        $this->addFlash('success', 'Série supprimé');

        return $this->redirectToRoute('series');
    }

}
