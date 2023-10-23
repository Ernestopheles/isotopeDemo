<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class get_Container_Private_Security_EncoderFactoryService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the public '.container.private.security.encoder_factory' shared service.
     *
     * @return \Symfony\Component\Security\Core\Encoder\EncoderFactory
     *
     * @deprecated Since symfony/security-bundle 5.3: The ".container.private.security.encoder_factory" service is deprecated, use "security.password_hasher_factory" instead.
     */
    public static function do($container, $lazyLoad = true)
    {
        trigger_deprecation('symfony/security-bundle', '5.3', 'The ".container.private.security.encoder_factory" service is deprecated, use "security.password_hasher_factory" instead.');

        return $container->services['.container.private.security.encoder_factory'] = new \Symfony\Component\Security\Core\Encoder\EncoderFactory(['Contao\\User' => ['algorithm' => 'auto', 'migrate_from' => [], 'hash_algorithm' => 'sha512', 'key_length' => 40, 'ignore_case' => false, 'encode_as_base64' => true, 'iterations' => 5000, 'cost' => NULL, 'memory_cost' => NULL, 'time_cost' => NULL]]);
    }
}
