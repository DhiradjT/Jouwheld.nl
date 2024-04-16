<?php

namespace App\Entity;

use App\Repository\CategoryRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CategoryRepository::class)]
class Category
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    /**
     * @var Collection<int, Helden>
     */
    #[ORM\OneToMany(targetEntity: Helden::class, mappedBy: 'category')]
    private Collection $world;

    #[ORM\Column(length: 255)]
    private ?string $heroworld = null;

    #[ORM\Column(type: Types::TEXT)]
    private ?string $description = null;

    #[ORM\Column(length: 255)]
    private ?string $img = null;

    public function __construct()
    {
        $this->world = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * @return Collection<int, Helden>
     */
    public function getWorld(): Collection
    {
        return $this->world;
    }

    public function addWorld(Helden $world): static
    {
        if (!$this->world->contains($world)) {
            $this->world->add($world);
            $world->setCategory($this);
        }

        return $this;
    }

    public function removeWorld(Helden $world): static
    {
        if ($this->world->removeElement($world)) {
            // set the owning side to null (unless already changed)
            if ($world->getCategory() === $this) {
                $world->setCategory(null);
            }
        }

        return $this;
    }

    public function getHeroworld(): ?string
    {
        return $this->heroworld;
    }

    public function setHeroworld(string $heroworld): static
    {
        $this->heroworld = $heroworld;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getImg(): ?string
    {
        return $this->img;
    }

    public function setImg(string $img): static
    {
        $this->img = $img;

        return $this;
    }
}
