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

/* @ContaoCore/Error/missing_route_parameters.html.twig */
class __TwigTemplate_e05816351964a00110eaa3b35bc90ef9 extends Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->blocks = [
            'title' => [$this, 'block_title'],
            'matter' => [$this, 'block_matter'],
            'explain' => [$this, 'block_explain'],
        ];
    }

    protected function doGetParent(array $context)
    {
        // line 2
        return "@ContaoCore/Error/layout.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        $this->parent = $this->loadTemplate("@ContaoCore/Error/layout.html.twig", "@ContaoCore/Error/missing_route_parameters.html.twig", 2);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 4
    public function block_title($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 5
        echo "    ";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("XPT.missingRouteParameters.title", [], "contao_exception"), "contao_html", null, true);
        echo "
";
    }

    // line 7
    public function block_matter($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 8
        echo "    <p>";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("XPT.missingRouteParameters.matter", [], "contao_exception"), "contao_html", null, true);
        echo "</p>
";
    }

    // line 10
    public function block_explain($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 11
        echo "    <p>";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("XPT.missingRouteParameters.explain", [], "contao_exception"), "contao_html", null, true);
        echo "</p>
    <p>";
        // line 12
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("XPT.missingRouteParameters.path", [], "contao_exception"), "contao_html", null, true);
        echo ": <code>";
        echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["throwable"] ?? null), "route", [], "any", false, false, false, 12), "path", [], "any", false, false, false, 12), "contao_html", null, true);
        echo "</code></p>
    <table>
        <thead>
        <tr>
            <th>";
        // line 16
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("XPT.missingRouteParameters.parameterName", [], "contao_exception"), "contao_html", null, true);
        echo "</th>
            <th>";
        // line 17
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("XPT.missingRouteParameters.parameterRequirement", [], "contao_exception"), "contao_html", null, true);
        echo "</th>
            <th>";
        // line 18
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("XPT.missingRouteParameters.parameterDefault", [], "contao_exception"), "contao_html", null, true);
        echo "</th>
        </tr>
        </thead>
        <tbody>
        ";
        // line 22
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["throwable"] ?? null), "route", [], "any", false, false, false, 22), "requirements", [], "any", false, false, false, 22));
        foreach ($context['_seq'] as $context["variable"] => $context["requirement"]) {
            // line 23
            echo "            <tr>
                <td>";
            // line 24
            echo $this->env->getFilter('escape')->getCallable()($this->env, $context["variable"], "contao_html", null, true);
            echo "</td>
                <td><code>";
            // line 25
            echo $this->env->getFilter('escape')->getCallable()($this->env, $context["requirement"], "contao_html", null, true);
            echo "</code></td>
                <td>";
            // line 26
            if (twig_test_empty((($__internal_compile_0 = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["throwable"] ?? null), "route", [], "any", false, false, false, 26), "defaults", [], "any", false, false, false, 26)) && is_array($__internal_compile_0) || $__internal_compile_0 instanceof ArrayAccess ? ($__internal_compile_0[$context["variable"]] ?? null) : null))) {
                echo "<i>";
                echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("XPT.missingRouteParameters.parameterEmpty", [], "contao_exception"), "contao_html", null, true);
                echo "</i>";
            } else {
                echo $this->env->getFilter('escape')->getCallable()($this->env, (($__internal_compile_1 = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["throwable"] ?? null), "route", [], "any", false, false, false, 26), "defaults", [], "any", false, false, false, 26)) && is_array($__internal_compile_1) || $__internal_compile_1 instanceof ArrayAccess ? ($__internal_compile_1[$context["variable"]] ?? null) : null), "contao_html", null, true);
            }
            echo "</td>
            </tr>
        ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['variable'], $context['requirement'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 29
        echo "        </tbody>
    </table>
";
    }

    public function getTemplateName()
    {
        return "@ContaoCore/Error/missing_route_parameters.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  133 => 29,  118 => 26,  114 => 25,  110 => 24,  107 => 23,  103 => 22,  96 => 18,  92 => 17,  88 => 16,  79 => 12,  74 => 11,  70 => 10,  63 => 8,  59 => 7,  52 => 5,  48 => 4,  37 => 2,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoCore/Error/missing_route_parameters.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/core-bundle/src/Resources/views/Error/missing_route_parameters.html.twig");
    }
}
