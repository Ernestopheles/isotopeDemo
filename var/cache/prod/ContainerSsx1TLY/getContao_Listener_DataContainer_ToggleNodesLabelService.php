<?php

namespace ContainerSsx1TLY;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Listener_DataContainer_ToggleNodesLabelService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the public 'contao.listener.data_container.toggle_nodes_label' shared service.
     *
     * @return \Contao\CoreBundle\EventListener\DataContainer\ToggleNodesLabelListener
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/EventListener/DataContainer/ToggleNodesLabelListener.php';

        return $container->services['contao.listener.data_container.toggle_nodes_label'] = new \Contao\CoreBundle\EventListener\DataContainer\ToggleNodesLabelListener(($container->services['request_stack'] ?? ($container->services['request_stack'] = new \Symfony\Component\HttpFoundation\RequestStack())), ($container->services['contao.routing.scope_matcher'] ?? $container->getContao_Routing_ScopeMatcherService()));
    }
}
