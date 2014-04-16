<?php

namespace pds\TreeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        // all items
        //$menu = [];

        $data = [];


        $menu = $this->getDoctrine()
            ->getRepository('pdsTreeBundle:Menu')
            ->findAll();


        foreach($menu as $item) {

            $child = $this->getDoctrine()
                ->getRepository('pdsTreeBundle:Menu')
                ->findBy([ 'parentId' => $item->getParentId() ]);
            $data[$item->getId()]['child'] = $child;
        }

        var_dump($menu);
        var_dump($data);


        $item = $this->getDoctrine()
            ->getRepository('pdsTreeBundle:Menu')
            ->findOneBy([ 'parentId' => 8 ]);

        //return $this->render('pdsTreeBundle:Default:index.html.twig', [ 'menu' => $menu ]);

        return $this->render('pdsTreeBundle:Default:index.html.twig', [ 'item' => $item ]);
    }
}
