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

/* @ContaoCore/Backend/be_page.html.twig */
class __TwigTemplate_90fcbb550c184ba008feccac78e837d0 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        echo $this->env->getRuntime('Contao\CoreBundle\Twig\Runtime\LegacyTemplateFunctionsRuntime')->renderContaoBackendTemplate(["main" =>         $this->renderBlock("main", $context, $blocks), "error" =>         $this->renderBlock("error", $context, $blocks), "headline" =>         $this->renderBlock("headline", $context, $blocks)]);
        // line 5
        echo "
";
    }

    public function getTemplateName()
    {
        return "@ContaoCore/Backend/be_page.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  39 => 5,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoCore/Backend/be_page.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/core-bundle/src/Resources/views/Backend/be_page.html.twig");
    }
}
