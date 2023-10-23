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

/* @ContaoCore/Image/Studio/figure.html.twig */
class __TwigTemplate_de85467573a34c687e8837b47b8ebcb0 extends Template
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
        $macros["studio"] = $this->macros["studio"] = $this->loadTemplate("@ContaoCore/Image/Studio/_macros.html.twig", "@ContaoCore/Image/Studio/figure.html.twig", 1)->unwrap();
        // line 3
        echo twig_call_macro($macros["studio"], "macro_figure", [($context["figure"] ?? null), twig_array_merge(((twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", true, true, false, 3)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, false, false, 3), [])) : ([])), ["attr" => ["class" => twig_trim_filter(("image_container " . ((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source,         // line 4
($context["figure"] ?? null), "options", [], "any", false, true, false, 4), "attr", [], "any", false, true, false, 4), "class", [], "any", true, true, false, 4)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 4), "attr", [], "any", false, true, false, 4), "class", [], "any", false, false, false, 4), "")) : (""))))]])], 3, $context, $this->getSourceContext());
    }

    public function getTemplateName()
    {
        return "@ContaoCore/Image/Studio/figure.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  40 => 4,  39 => 3,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoCore/Image/Studio/figure.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/core-bundle/src/Resources/views/Image/Studio/figure.html.twig");
    }
}
