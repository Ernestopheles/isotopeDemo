<?php

namespace ContainerSsx1TLY;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Image_FactoryService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the public 'contao.image.factory' shared service.
     *
     * @return \Contao\CoreBundle\Image\ImageFactory
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/Image/ImageFactoryInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/Image/ImageFactory.php';
        include_once \dirname(__DIR__, 4).'/vendor/imagine/imagine/src/Factory/ClassFactoryAwareInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/imagine/imagine/src/Image/ImagineInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/imagine/imagine/src/Image/AbstractImagine.php';
        include_once \dirname(__DIR__, 4).'/vendor/imagine/imagine/src/Driver/InfoProvider.php';
        include_once \dirname(__DIR__, 4).'/vendor/imagine/imagine/src/Imagick/Imagine.php';
        include_once \dirname(__DIR__, 4).'/vendor/contao/imagine-svg/src/Imagine.php';

        $a = ($container->services['contao.image.legacy_resizer'] ?? $container->load('getContao_Image_LegacyResizerService'));

        if (isset($container->services['contao.image.factory'])) {
            return $container->services['contao.image.factory'];
        }
        $b = ($container->services['contao.framework'] ?? $container->getContao_FrameworkService());

        if (isset($container->services['contao.image.factory'])) {
            return $container->services['contao.image.factory'];
        }

        return $container->services['contao.image.factory'] = new \Contao\CoreBundle\Image\ImageFactory($a, ($container->services['contao.image.imagine'] ?? ($container->services['contao.image.imagine'] = new \Imagine\Imagick\Imagine())), ($container->services['contao.image.imagine_svg'] ?? ($container->services['contao.image.imagine_svg'] = new \Contao\ImagineSvg\Imagine())), ($container->services['.container.private.filesystem'] ?? ($container->services['.container.private.filesystem'] = new \Symfony\Component\Filesystem\Filesystem())), $b, false, $container->parameters['contao.image.imagine_options'], $container->parameters['contao.image.valid_extensions'], (\dirname(__DIR__, 4).'/files'), ($container->services['monolog.logger.contao.error'] ?? $container->load('getMonolog_Logger_Contao_ErrorService')));
    }
}
