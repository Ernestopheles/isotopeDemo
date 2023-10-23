<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* @ContaoInstallation/configuration_error.html.twig */
class __TwigTemplate_1bb5ebab08378c073d7b62f9de1dcfe1 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
            'main' => [$this, 'block_main'],
        ];
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return "@ContaoInstallation/layout.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        $this->parent = $this->loadTemplate("@ContaoInstallation/layout.html.twig", "@ContaoInstallation/configuration_error.html.twig", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 4
    public function block_main($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 5
        echo "  <fieldset class=\"tl_tbox nolegend\">
    <h3>";
        // line 6
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("an_error_occurred", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</h3>
    ";
        // line 7
        if ((($context["errorCode"] ?? null) == 1)) {
            // line 8
            echo "      <p class=\"tl_error\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("unsupported_version", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</p>
      <p>";
            // line 9
            echo $this->env->getFilter('escape')->getCallable()($this->env, twig_sprintf($this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("unsupported_version_explain", [], "ContaoInstallationBundle"), ($context["version"] ?? null)), "contao_html", null, true);
            echo "</p>
    ";
        } elseif ((        // line 10
($context["errorCode"] ?? null) == 2)) {
            // line 11
            echo "      <p class=\"tl_error\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("unsupported_collation", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</p>
      <p>";
            // line 12
            echo twig_sprintf($this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("unsupported_collation_explain", [], "ContaoInstallationBundle"), ($context["collation"] ?? null));
            echo "</p>
      <div id=\"sql_wrapper\">
        <pre>doctrine:
    dbal:
        connections:
            default:
                default_table_options:
                    charset: utf8
                    collation: utf8_unicode_ci</pre>
      </div>
    ";
        } elseif ((        // line 22
($context["errorCode"] ?? null) == 3)) {
            // line 23
            echo "      <p class=\"tl_error\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("unsupported_engine", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</p>
      <p>";
            // line 24
            echo twig_sprintf($this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("unsupported_engine_explain", [], "ContaoInstallationBundle"), ($context["engine"] ?? null));
            echo "</p>
      <div id=\"sql_wrapper\">
        <pre>doctrine:
    dbal:
        connections:
            default:
                default_table_options:
                    engine: MyISAM
                    row_format: ~</pre>
      </div>
    ";
        } elseif ((        // line 34
($context["errorCode"] ?? null) == 4)) {
            // line 35
            echo "      <p class=\"tl_error\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("engine_mismatch", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</p>
      <p>";
            // line 36
            echo twig_sprintf($this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("engine_mismatch_explain", [], "ContaoInstallationBundle"), ($context["engine"] ?? null));
            echo "</p>
      <div id=\"sql_wrapper\">
        <pre>doctrine:
    dbal:
        connections:
            default:
                default_table_options:
                    charset: utf8
                    collation: utf8_unicode_ci</pre>
      </div>
    ";
        } elseif ((        // line 46
($context["errorCode"] ?? null) == 5)) {
            // line 47
            echo "      <p class=\"tl_error\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("innodb_large_prefix", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</p>
      <p>";
            // line 48
            echo $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("innodb_large_prefix_explain", [], "ContaoInstallationBundle");
            echo "</p>
      <div id=\"sql_wrapper\">
        <pre>doctrine:
    dbal:
        connections:
            default:
                default_table_options:
                    charset: utf8
                    collation: utf8_unicode_ci</pre>
      </div>
    ";
        } elseif ((        // line 58
($context["errorCode"] ?? null) == 6)) {
            // line 59
            echo "      <p class=\"tl_error\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("innodb_additional", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</p>
      <p>";
            // line 60
            echo $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("innodb_additional_explain", [], "ContaoInstallationBundle");
            echo "</p>
      <div id=\"sql_wrapper\">
        <pre>innodb_large_prefix = 1
innodb_file_format = Barracuda
innodb_file_per_table = 1</pre>
      </div>
    ";
        }
        // line 67
        echo "  </fieldset>
";
    }

    public function getTemplateName()
    {
        return "@ContaoInstallation/configuration_error.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  165 => 67,  155 => 60,  150 => 59,  148 => 58,  135 => 48,  130 => 47,  128 => 46,  115 => 36,  110 => 35,  108 => 34,  95 => 24,  90 => 23,  88 => 22,  75 => 12,  70 => 11,  68 => 10,  64 => 9,  59 => 8,  57 => 7,  53 => 6,  50 => 5,  46 => 4,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoInstallation/configuration_error.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/installation-bundle/src/Resources/views/configuration_error.html.twig");
    }
}
