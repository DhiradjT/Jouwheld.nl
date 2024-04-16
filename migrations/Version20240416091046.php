<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240416091046 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE category (id INT AUTO_INCREMENT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE helden ADD category_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE helden ADD CONSTRAINT FK_88192C5312469DE2 FOREIGN KEY (category_id) REFERENCES category (id)');
        $this->addSql('CREATE INDEX IDX_88192C5312469DE2 ON helden (category_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE helden DROP FOREIGN KEY FK_88192C5312469DE2');
        $this->addSql('DROP TABLE category');
        $this->addSql('DROP INDEX IDX_88192C5312469DE2 ON helden');
        $this->addSql('ALTER TABLE helden DROP category_id');
    }
}
