<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Image_ImagineService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the public 'contao.image.imagine' shared service.
     *
     * @return \Imagine\Imagick\Imagine
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/imagine/imagine/src/Factory/ClassFactoryAwareInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/imagine/imagine/src/Image/ImagineInterface.php';
        include_once \dirname(__DIR__, 4).'/vendor/imagine/imagine/src/Image/AbstractImagine.php';
        include_once \dirname(__DIR__, 4).'/vendor/imagine/imagine/src/Driver/InfoProvider.php';
        include_once \dirname(__DIR__, 4).'/vendor/imagine/imagine/src/Imagick/Imagine.php';

        return $container->services['contao.image.imagine'] = new \Imagine\Imagick\Imagine();
    }
}
