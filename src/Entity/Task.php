<?php


namespace App\Entity;


class Task
{
    protected $name;
    protected $someFill;

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getSomeFill(): ?int
    {
        return $this->someFill;
    }

    public function setSomeFill(int $someFill): self
    {
        $this->someFill = $someFill;

        return $this;
    }

}