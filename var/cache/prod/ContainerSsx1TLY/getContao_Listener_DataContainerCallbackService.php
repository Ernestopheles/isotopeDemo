<?php

namespace ContainerSsx1TLY;

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

/*
 * @internal This class has been auto-generated by the Symfony Dependency Injection Component.
 */
class getContao_Listener_DataContainerCallbackService extends Contao_ManagerBundle_HttpKernel_ContaoKernelProdContainer
{
    /*
     * Gets the public 'contao.listener.data_container_callback' shared service.
     *
     * @return \Contao\CoreBundle\EventListener\DataContainerCallbackListener
     */
    public static function do($container, $lazyLoad = true)
    {
        include_once \dirname(__DIR__, 4).'/vendor/contao/core-bundle/src/EventListener/DataContainerCallbackListener.php';

        $container->services['contao.listener.data_container_callback'] = $instance = new \Contao\CoreBundle\EventListener\DataContainerCallbackListener();

        $instance->setCallbacks(['tl_page' => ['list.operations.articles.button_callback' => [0 => [0 => [0 => 'contao.listener.data_container.content_composition', 1 => 'renderPageArticlesOperation']]], 'config.onsubmit_callback' => [-16 => [0 => [0 => 'contao.listener.data_container.content_composition', 1 => 'generateArticleForPage']]], 'fields.canonicalLink.load_callback' => [0 => [0 => [0 => 'contao.listener.data_container.disable_canonical_fields', 1 => '__invoke']]], 'fields.canonicalKeepParams.load_callback' => [0 => [0 => [0 => 'contao.listener.data_container.disable_canonical_fields', 1 => '__invoke']]], 'fields.layout.options_callback' => [0 => [0 => [0 => 'contao.listener.data_container.layout_options', 1 => '__invoke']]], 'fields.subpageLayout.options_callback' => [0 => [0 => [0 => 'contao.listener.data_container.layout_options', 1 => '__invoke']]], 'fields.groups.options_callback' => [0 => [0 => [0 => 'contao.listener.data_container.member_groups', 1 => '__invoke']]], 'fields.routePath.input_field_callback' => [0 => [0 => [0 => 'contao.listener.data_container.page_routing', 1 => 'generateRoutePath']]], 'fields.routeConflicts.input_field_callback' => [0 => [0 => [0 => 'contao.listener.data_container.page_routing', 1 => 'generateRouteConflicts']]], 'fields.alias.save_callback' => [0 => [0 => [0 => 'contao.listener.data_container.page_search', 1 => 'onSaveAlias'], 1 => [0 => 'contao.listener.data_container.page_url', 1 => 'generateAlias']]], 'fields.noSearch.save_callback' => [0 => [0 => [0 => 'contao.listener.data_container.page_search', 1 => 'onSaveNoSearch']]], 'fields.robots.save_callback' => [0 => [0 => [0 => 'contao.listener.data_container.page_search', 1 => 'onSaveRobots']]], 'config.ondelete_callback' => [16 => [0 => [0 => 'contao.listener.data_container.page_search', 1 => 'onDelete']]], 'fields.type.options_callback' => [0 => [0 => [0 => 'contao.listener.data_container.page_type_options', 1 => '__invoke']]], 'fields.urlPrefix.save_callback' => [0 => [0 => [0 => 'contao.listener.data_container.page_url', 1 => 'validateUrlPrefix']]], 'fields.urlSuffix.save_callback' => [0 => [0 => [0 => 'contao.listener.data_container.page_url', 1 => 'validateUrlSuffix']]], 'config.onload_callback' => [0 => [0 => [0 => 'contao.listener.data_container.page_use_ssl_default', 1 => '__invoke'], 1 => [0 => 'contao.listener.data_container.legacy_routing', 1 => 'disableRoutingFields']]], 'fields.mailerTransport.options_callback' => [0 => [0 => [0 => 'contao.mailer.available_transports', 1 => 'getTransportOptions']]], 'fields.urlPrefix.load_callback' => [0 => [0 => [0 => 'contao.listener.data_container.legacy_routing', 1 => 'overrideUrlPrefix']]], 'fields.urlSuffix.load_callback' => [0 => [0 => [0 => 'contao.listener.data_container.legacy_routing', 1 => 'overrideUrlSuffix']]], 'fields.languageMain.load_callback' => [0 => [0 => [0 => 'Terminal42\\ChangeLanguage\\EventListener\\DataContainer\\PageFieldsListener', 1 => 'onLoadLanguageMain']]], 'fields.languageMain.save_callback' => [0 => [0 => [0 => 'Terminal42\\ChangeLanguage\\EventListener\\DataContainer\\PageFieldsListener', 1 => 'onSaveLanguageMain']]], 'fields.languageRoot.options_callback' => [0 => [0 => [0 => 'Terminal42\\ChangeLanguage\\EventListener\\DataContainer\\PageFieldsListener', 1 => 'onLanguageRootOptions']]]], 'tl_article' => ['list.sorting.paste_button_callback' => [0 => [0 => [0 => 'contao.listener.data_container.content_composition', 1 => 'renderArticlePasteButton']]], 'fields.groups.options_callback' => [0 => [0 => [0 => 'contao.listener.data_container.member_groups', 1 => '__invoke']]]], 'tl_settings' => ['config.onload_callback' => [0 => [0 => [0 => 'contao.listener.data_container.disable_app_configured_settings', 1 => 'onLoadCallback']]]], 'tl_content' => ['fields.groups.options_callback' => [0 => [0 => [0 => 'contao.listener.data_container.member_groups', 1 => '__invoke']]], 'fields.type.save_callback' => [0 => [0 => [0 => 'contao.listener.data_container.reset_custom_template', 1 => '__invoke']]], 'fields.customTpl.options_callback' => [0 => [0 => [0 => 'contao.listener.element_template_options', 1 => '__invoke']]], 'fields.size.options_callback' => [0 => [0 => [0 => 'contao.listener.image_size_options', 1 => '__invoke']]]], 'tl_module' => ['fields.groups.options_callback' => [0 => [0 => [0 => 'contao.listener.data_container.member_groups', 1 => '__invoke']]], 'fields.type.save_callback' => [0 => [0 => [0 => 'contao.listener.data_container.reset_custom_template', 1 => '__invoke']]], 'fields.imgSize.options_callback' => [0 => [0 => [0 => 'contao.listener.image_size_options', 1 => '__invoke']]], 'fields.customTpl.options_callback' => [0 => [0 => [0 => 'contao.listener.module_template_options', 1 => '__invoke']]], 'fields.rootPageDependentModules.options_callback' => [0 => [0 => [0 => 'contao.listener.widget.root_page_dependent_select', 1 => 'optionsCallback']]], 'fields.rootPageDependentModules.save_callback' => [0 => [0 => [0 => 'contao.listener.widget.root_page_dependent_select', 1 => 'saveCallback']]], 'fields.rootPageDependentModules.wizard' => [0 => [0 => [0 => 'contao.listener.widget.root_page_dependent_select', 1 => 'wizardCallback']]]], 'tl_user' => ['fields.alpty.options_callback' => [0 => [0 => [0 => 'contao.listener.data_container.page_type_options', 1 => '__invoke']]], 'fields.et_activeModules.options_callback' => [0 => [0 => [0 => 'Terminal42\\EasyThemesBundle\\EventListener\\ThemeOptionsListener', 1 => '__invoke']]], 'config.onload_callback' => [0 => [0 => [0 => 'Terminal42\\EasyThemesBundle\\EventListener\\UserPaletteListener', 1 => '__invoke']]]], 'tl_user_group' => ['fields.alpty.options_callback' => [0 => [0 => [0 => 'contao.listener.data_container.page_type_options', 1 => '__invoke']]]], 'tl_preview_link' => ['config.onload_callback' => [0 => [0 => [0 => 'contao.listener.data_container.preview_link', 1 => 'createFromUrl'], 1 => [0 => 'contao.listener.data_container.preview_link', 1 => 'adjustEditView']]], 'list.label.label_callback' => [0 => [0 => [0 => 'contao.listener.data_container.preview_link', 1 => 'formatColumnView']]], 'list.operations.share.button_callback' => [0 => [0 => [0 => 'contao.listener.data_container.preview_link', 1 => 'shareOperation']]]], 'tl_theme' => ['fields.templates.save_callback' => [0 => [0 => [0 => 'contao.listener.data_container.theme_templates', 1 => '__invoke']]], 'config.ondelete_callback' => [0 => [0 => [0 => 'Terminal42\\EasyThemesBundle\\EventListener\\DeleteThemeListener', 1 => '__invoke']]]], 'tl_undo' => ['list.operations.jumpToParent.button_callback' => [0 => [0 => [0 => 'contao.listener.data_container.undo.jump_to_parent_button', 1 => '__invoke']]], 'list.label.label_callback' => [0 => [0 => [0 => 'contao.listener.data_container.undo.label', 1 => '__invoke']]]], 'tl_form_field' => ['fields.customRgxp.save_callback' => [0 => [0 => [0 => 'contao.listener.data_container.validate_custom_rgxp', 1 => '__invoke']]]], 'tl_layout' => ['fields.lightboxSize.options_callback' => [0 => [0 => [0 => 'contao.listener.image_size_options', 1 => '__invoke']]]], 'tl_form' => ['fields.mailerTransport.options_callback' => [0 => [0 => [0 => 'contao.mailer.available_transports', 1 => 'getTransportOptions']]]]]);

        return $instance;
    }
}
