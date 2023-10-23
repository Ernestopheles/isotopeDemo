<?php

namespace ContainerXRMqzeh;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getBackendPreviewControllerService extends Contao_ManagerBundle_HttpKernel_ContaoKernelDevDebugContainer
{
    /**
     * Gets the public 'Contao\CoreBundle\Controller\BackendPreviewController' shared service.
     *
     * @return \Contao\CoreBundle\Controller\BackendPreviewController
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/Controller/BackendPreviewController.php';

        return $container->services['Contao\\CoreBundle\\Controller\\BackendPreviewController'] = new \Contao\CoreBundle\Controller\BackendPreviewController('/preview.php', ($container->services['contao.security.frontend_preview_authenticator'] ?? $container->load('getContao_Security_FrontendPreviewAuthenticatorService')), ($container->services['event_dispatcher'] ?? $container->getEventDispatcherService()), ($container->services['.container.private.security.authorization_checker'] ?? $container->get_Container_Private_Security_AuthorizationCheckerService()));
    }
}
