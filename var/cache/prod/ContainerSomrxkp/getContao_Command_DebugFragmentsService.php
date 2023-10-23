<?php

namespace ContainerSomrxkp;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Command_DebugFragmentsService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the private 'contao.command.debug_fragments' shared service.
     *
     * @return \Contao\CoreBundle\Command\DebugFragmentsCommand
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/symfony/console/Command/Command.php';
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/Command/DebugFragmentsCommand.php';

        $container->privates['contao.command.debug_fragments'] = $instance = new \Contao\CoreBundle\Command\DebugFragmentsCommand();

        $instance->add('contao.frontend_module.root_page_dependent_modules', ($container->privates['contao.fragment._config_yQxn9v4'] ?? ($container->privates['contao.fragment._config_yQxn9v4'] = new \Contao\CoreBundle\Fragment\FragmentConfig('contao.fragment._contao.frontend_module.root_page_dependent_modules', 'forward', ['ignore_errors' => false]))), ['category' => 'miscellaneous', 'type' => 'root_page_dependent_modules', 'debugController' => 'Contao\\CoreBundle\\Controller\\FrontendModule\\RootPageDependentModulesController', 'template' => 'mod_root_page_dependent_modules']);
        $instance->add('contao.frontend_module.template', ($container->privates['contao.fragment._config_UbRP2PT'] ?? ($container->privates['contao.fragment._config_UbRP2PT'] = new \Contao\CoreBundle\Fragment\FragmentConfig('contao.fragment._contao.frontend_module.template', 'forward', ['ignore_errors' => false]))), ['category' => 'miscellaneous', 'type' => 'template', 'debugController' => 'Contao\\CoreBundle\\Controller\\FrontendModule\\TemplateController', 'template' => 'mod_template']);
        $instance->add('contao.frontend_module.two_factor', ($container->privates['contao.fragment._config_Ie.W_bF'] ?? ($container->privates['contao.fragment._config_Ie.W_bF'] = new \Contao\CoreBundle\Fragment\FragmentConfig('contao.fragment._contao.frontend_module.two_factor', 'forward', ['ignore_errors' => false]))), ['category' => 'user', 'type' => 'two_factor', 'debugController' => 'Contao\\CoreBundle\\Controller\\FrontendModule\\TwoFactorController', 'template' => 'mod_two_factor']);
        $instance->add('contao.content_element.markdown', ($container->privates['contao.fragment._config_Bd8Hjso'] ?? ($container->privates['contao.fragment._config_Bd8Hjso'] = new \Contao\CoreBundle\Fragment\FragmentConfig('contao.fragment._contao.content_element.markdown', 'forward', ['ignore_errors' => false]))), ['category' => 'texts', 'type' => 'markdown', 'debugController' => 'Contao\\CoreBundle\\Controller\\ContentElement\\MarkdownController', 'template' => 'ce_markdown']);
        $instance->add('contao.content_element.template', ($container->privates['contao.fragment._config_s7uzikD'] ?? ($container->privates['contao.fragment._config_s7uzikD'] = new \Contao\CoreBundle\Fragment\FragmentConfig('contao.fragment._contao.content_element.template', 'forward', ['ignore_errors' => false]))), ['category' => 'includes', 'type' => 'template', 'debugController' => 'Contao\\CoreBundle\\Controller\\ContentElement\\TemplateController', 'template' => 'ce_template']);
        $instance->setName('debug:fragments');
        $instance->setDescription('Displays the fragment controller configuration.');

        return $instance;
    }
}
