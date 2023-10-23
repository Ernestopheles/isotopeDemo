<?php

namespace ContainerXRMqzeh;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/**
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Image_Studio_FigureRendererService extends Contao_ManagerBundle_HttpKernel_ContaoKernelDevDebugContainer
{
    /**
     * Gets the public 'contao.image.studio.figure_renderer' shared service.
     *
     * @return \Contao\CoreBundle\Image\Studio\FigureRenderer
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/Image/Studio/FigureRenderer.php';

        $a = ($container->services['contao.image.studio'] ?? $container->load('getContao_Image_StudioService'));

        if (isset($container->services['contao.image.studio.figure_renderer'])) {
            return $container->services['contao.image.studio.figure_renderer'];
        }
        $b = ($container->services['.container.private.twig'] ?? $container->get_Container_Private_TwigService());

        if (isset($container->services['contao.image.studio.figure_renderer'])) {
            return $container->services['contao.image.studio.figure_renderer'];
        }

        return $container->services['contao.image.studio.figure_renderer'] = new \Contao\CoreBundle\Image\Studio\FigureRenderer($a, $b);
    }
}
