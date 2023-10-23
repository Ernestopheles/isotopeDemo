<?php

namespace ContainerXRMqzeh;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Twig_SchemaOrgRuntimeService extends Contao_ManagerBundle_HttpKernel_ContaoKernelDevDebugContainer
{
    /**
     * Gets the private 'contao.twig.schema_org_runtime' shared service.
     *
     * @return \Contao\CoreBundle\Twig\Runtime\SchemaOrgRuntime
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/twig/twig/src/Extension/RuntimeExtensionInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/Twig/Runtime/SchemaOrgRuntime.php';

        return $container->privates['contao.twig.schema_org_runtime'] = new \Contao\CoreBundle\Twig\Runtime\SchemaOrgRuntime(($container->services['contao.routing.response_context_accessor'] ?? $container->load('getContao_Routing_ResponseContextAccessorService')));
    }
}
