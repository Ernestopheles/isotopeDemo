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

/* @ContaoCore/Backend/be_route_conflicts.html.twig */
class __TwigTemplate_add403760502fc7534eaca81d91ad413 extends Template
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
        // line 2
        echo "<div class=\"clr widget\">
    <h3>";
        // line 3
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_page.routeConflicts.0", [], "contao_tl_page"), "contao_html", null, true);
        echo "</h3>
    <div class=\"tl_info\">
        <p>";
        // line 5
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_page.routeConflicts.1", [], "contao_tl_page"), "contao_html", null, true);
        echo "</p>
        <table class=\"tl_listing showColumns\">
            <tbody>
            <tr>
                <th class=\"tl_folder_tlist\">";
        // line 9
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.id.0", [], "contao_default"), "contao_html", null, true);
        echo "</th>
                <th class=\"tl_folder_tlist\">";
        // line 10
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_page.title.0", [], "contao_tl_page"), "contao_html", null, true);
        echo "</th>
                <th class=\"tl_folder_tlist\">";
        // line 11
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_page.type.0", [], "contao_tl_page"), "contao_html", null, true);
        echo "</th>
                <th class=\"tl_folder_tlist\">";
        // line 12
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_page.alias.0", [], "contao_tl_page"), "contao_html", null, true);
        echo "</th>
                <th class=\"tl_folder_tlist\">";
        // line 13
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_page.routePath.0", [], "contao_tl_page"), "contao_html", null, true);
        echo "</th>
                <th class=\"tl_folder_tlist\">";
        // line 14
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_page.routePriority.0", [], "contao_tl_page"), "contao_html", null, true);
        echo "</th>
                <th class=\"tl_folder_tlist tl_right_nowrap\"></th>
            </tr>
            ";
        // line 17
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["conflicts"] ?? null));
        $context['loop'] = [
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        ];
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof \Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["conflict"]) {
            // line 18
            echo "                <tr class=\"";
            echo (((twig_get_attribute($this->env, $this->source, $context["loop"], "index", [], "any", false, false, false, 18) % 2)) ? ("even") : ("odd"));
            echo " hover-row\">
                    <td colspan=\"1\" class=\"tl_file_list\">";
            // line 19
            echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["conflict"], "page", [], "any", false, false, false, 19), "id", [], "any", false, false, false, 19), "contao_html", null, true);
            echo "</td>
                    <td colspan=\"1\" class=\"tl_file_list\">";
            // line 20
            echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["conflict"], "page", [], "any", false, false, false, 20), "title", [], "any", false, false, false, 20), "contao_html", null, true);
            echo "</td>
                    <td colspan=\"1\" class=\"tl_file_list\">";
            // line 21
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans((("PTY." . twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["conflict"], "page", [], "any", false, false, false, 21), "type", [], "any", false, false, false, 21)) . ".0"), [], "contao_default"), "contao_html", null, true);
            echo "</td>
                    <td colspan=\"1\" class=\"tl_file_list\">";
            // line 22
            echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["conflict"], "page", [], "any", false, false, false, 22), "alias", [], "any", false, false, false, 22), "contao_html", null, true);
            echo "</td>
                    <td colspan=\"1\" class=\"tl_file_list\">";
            // line 23
            echo twig_get_attribute($this->env, $this->source, $context["conflict"], "path", [], "any", false, false, false, 23);
            echo "</td>
                    <td colspan=\"1\" class=\"tl_file_list\">";
            // line 24
            echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["conflict"], "page", [], "any", false, false, false, 24), "routePriority", [], "any", false, false, false, 24), "contao_html", null, true);
            echo "</td>
                    <td class=\"tl_file_list tl_right_nowrap\">
                        <a
                            href=\"";
            // line 27
            echo twig_get_attribute($this->env, $this->source, $context["conflict"], "editUrl", [], "any", false, false, false, 27);
            echo "\"
                            onclick=\"Backend.openModalIframe({title:'";
            // line 28
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_page.edit", [twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["conflict"], "page", [], "any", false, false, false, 28), "id", [], "any", false, false, false, 28)], "contao_tl_page"), "contao_html", null, true);
            echo "', url:this.href});return false\"
                            title=\"";
            // line 29
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_page.edit", [twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["conflict"], "page", [], "any", false, false, false, 29), "id", [], "any", false, false, false, 29)], "contao_tl_page"), "contao_html", null, true);
            echo "\"
                            class=\"edit\"
                        ><img src=\"system/themes/flexible/icons/edit.svg\" width=\"16\" height=\"16\" alt=\"\"></a>
                    </td>
                </tr>
            ";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['conflict'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 35
        echo "            </tbody>
        </table>
    </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "@ContaoCore/Backend/be_route_conflicts.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  154 => 35,  134 => 29,  130 => 28,  126 => 27,  120 => 24,  116 => 23,  112 => 22,  108 => 21,  104 => 20,  100 => 19,  95 => 18,  78 => 17,  72 => 14,  68 => 13,  64 => 12,  60 => 11,  56 => 10,  52 => 9,  45 => 5,  40 => 3,  37 => 2,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoCore/Backend/be_route_conflicts.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/core-bundle/src/Resources/views/Backend/be_route_conflicts.html.twig");
    }
}
