<?php

namespace App\Repository;

use App\Entity\Helden;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<Helden>
 *
 * @method Helden|null find($id, $lockMode = null, $lockVersion = null)
 * @method Helden|null findOneBy(array $criteria, array $orderBy = null)
 * @method Helden[]    findAll()
 * @method Helden[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class HeldenRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Helden::class);
    }

//    /**
//     * @return Helden[] Returns an array of Helden objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('h')
//            ->andWhere('h.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('h.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?Helden
//    {
//        return $this->createQueryBuilder('h')
//            ->andWhere('h.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
