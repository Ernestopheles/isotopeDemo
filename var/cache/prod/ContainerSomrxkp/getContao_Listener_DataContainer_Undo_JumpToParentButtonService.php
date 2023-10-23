<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Listener_DataContainer_Undo_JumpToParentButtonService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the public 'contao.listener.data_container.undo.jump_to_parent_button' shared service.
     *
     * @return \Contao\CoreBundle\EventListener\DataContainer\Undo\JumpToParentButtonListener
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/EventListener/DataContainer/Undo/JumpToParentButtonListener.php';

        return $container->services['contao.listener.data_container.undo.jump_to_parent_button'] = new \Contao\CoreBundle\EventListener\DataContainer\Undo\JumpToParentButtonListener(($container->services['contao.framework'] ?? $container->getContao_FrameworkService()), ($container->services['doctrine.dbal.default_connection'] ?? $container->getDoctrine_Dbal_DefaultConnectionService()), ($container->services['translator'] ?? $container->getTranslatorService()));
    }
}
