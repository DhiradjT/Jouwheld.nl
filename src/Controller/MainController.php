<?php

namespace App\Controller;

use App\Entity\Category;
use App\Entity\Helden;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

class MainController extends AbstractController
{
    #[Route('/', name: 'app_main')]
    public function index(EntityManagerInterface $entityManager): Response
    {
        $categories = $entityManager->getRepository(Category::class)->findAll();
        return $this->render('main/index.html.twig', [
            'category' => $categories,
        ]);
    }

    #[Route('/category', name: 'app_category')]
    public function category(EntityManagerInterface $entityManager): Response
    {
        $helden = $entityManager->getRepository(Helden::class)->findAll();
        return $this->render('main/category.html.twig', [
            'held' => $helden,
        ]);
    }
}
