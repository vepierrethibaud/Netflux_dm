<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass="App\Repository\SerieRepository")
 */
class Serie
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $nom;

    /**
     * @ORM\Column(type="integer")
     */
    private $datestart;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $dateend;

    /**
    * @ORM\Column(type="integer")
     */
    private $nbsaison;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $affiche;

    /**
     * @ORM\ManyToOne(targetEntity="App\Entity\Categorie")
     * @ORM\JoinColumn(name="categorie_id", nullable=true, onDelete="SET NULL")
     */
    private $categorie;

    /**
     * @ORM\Column(type="string", length=1500)
     */
    private $synopsis;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getDatestart(): ?int
    {
        return $this->datestart;
    }

    public function setDatestart(int $datestart): self
    {
        $this->datestart = $datestart;

        return $this;
    }

    public function getDateend(): ?string
    {
        return $this->dateend;
    }

    public function setDateend(string $dateend): self
    {
        $this->dateend = $dateend;

        return $this;
    }

    public function getNbsaison(): ?int
    {
        return $this->nbsaison;
    }

    public function setNbsaison(int $nbsaison): self
    {
        $this->nbsaison = $nbsaison;

        return $this;
    }

    public function getAffiche(): ?string
    {
        return $this->affiche;
    }

    public function setAffiche(string $affiche): self
    {
        $this->affiche = $affiche;

        return $this;
    }

    public function getCategorie(): ?categorie
    {
        return $this->categorie;
    }

    public function setCategorie(?categorie $categorie): self
    {
        $this->categorie = $categorie;

        return $this;
    }

    public function getSynopsis(): ?string
    {
        return $this->synopsis;
    }

    public function setSynopsis(string $synopsis): self
    {
        $this->synopsis = $synopsis;

        return $this;
    }
}
