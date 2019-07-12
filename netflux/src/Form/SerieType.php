<?php
namespace App\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\FormBuilderInterface;
use App\Entity\Serie;
use App\Entity\Categorie;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SerieType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
			->add('nom')
			->add('datestart')
			->add('dateend')
			->add('nbsaison')
			->add('synopsis')
			->add('affiche', FileType::class, [
				'mapped'=>false, // Ca permet de ne pas associer cet input avec un champ de la BDD
				'required'=>false // Permet de sauvegarder l'utilisateur sans photo de profil
			])
      ->add('categorie', EntityType::class, [
				'class' => Categorie::class
			])
			->add('save', SubmitType::class, ['label' => 'Enregistrer'])
        ;
	}

	public function configureOptions(OptionsResolver $resolver)
	{
		$resolver->setDefaults([
			'data_class' => Serie::class,
		]);
	}
}
?>
