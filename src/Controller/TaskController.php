<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use App\Entity\Task;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class TaskController extends AbstractController
{
    public function taskAction()
    {
        $task = new Task();
        $task->setName('Some Name');
        $task->setSomeFill(4);

        $form = $this->createFormBuilder($task)
            ->add('name', TextType::class)
            ->add('someFill', IntegerType::class)
            ->add('save', SubmitType::class, array('label' => 'create some form'))
            ->getForm();
        return $this->render('task/task.html.twig', array(
            'form' => $form->createView(),
        ));
    }

}