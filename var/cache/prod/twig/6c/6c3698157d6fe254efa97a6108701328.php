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

/* @ContaoInstallation/initialize.html.twig */
class __TwigTemplate_3c93054f591692476c11f39862e21b75 extends Template
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
        $this->parent = $this->loadTemplate("@ContaoInstallation/layout.html.twig", "@ContaoInstallation/initialize.html.twig", 1);
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
    <p class=\"tl_error\">";
        // line 7
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("console_explanation", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</p>
    ";
        // line 8
        if ( !twig_test_empty(($context["output"] ?? null))) {
            // line 9
            echo "      <pre class=\"console-wrapper\"><code>";
            echo $this->extensions['SensioLabs\AnsiConverter\Bridge\Twig\AnsiExtension']->ansiToHtml(($context["output"] ?? null));
            echo "</code></pre>
    ";
        }
        // line 11
        echo "  </fieldset>
";
    }

    public function getTemplateName()
    {
        return "@ContaoInstallation/initialize.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  69 => 11,  63 => 9,  61 => 8,  57 => 7,  53 => 6,  50 => 5,  46 => 4,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoInstallation/initialize.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/installation-bundle/src/Resources/views/initialize.html.twig");
    }
}
