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

/* @ContaoCore/Backend/be_undo_label.html.twig */
class __TwigTemplate_db6ea0c1a328db86201b94159083b893 extends Template
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
        echo "<div class=\"tl_undo_header\">
    <div class=\"tstamp\">
        <span class=\"date\">";
        // line 4
        echo $this->env->getFilter('escape')->getCallable()($this->env, twig_date_format_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["row"] ?? null), "tstamp", [], "any", false, false, false, 4), ($context["dateFormat"] ?? null)), "contao_html", null, true);
        echo "</span>
        <span class=\"time\">";
        // line 5
        echo $this->env->getFilter('escape')->getCallable()($this->env, twig_date_format_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["row"] ?? null), "tstamp", [], "any", false, false, false, 5), ($context["timeFormat"] ?? null)), "contao_html", null, true);
        echo "</span>
    </div>
    <div>
        ";
        // line 8
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_undo.pid.0", [], "contao_tl_undo"), "contao_html", null, true);
        echo ": <strong>";
        if (($context["user"] ?? null)) {
            echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, ($context["user"] ?? null), "username", [], "any", false, false, false, 8), "contao_html", null, true);
        } else {
            echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, ($context["row"] ?? null), "pid", [], "any", false, false, false, 8), "contao_html", null, true);
        }
        echo "</strong>
    </div>
    <div class=\"source\">
        ";
        // line 11
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_undo.fromTable.0", [], "contao_tl_undo"), "contao_html", null, true);
        echo ": <strong>";
        echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["fromTable"] ?? null), "contao_html", null, true);
        echo ".";
        echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, ($context["originalRow"] ?? null), "id", [], "any", false, false, false, 11), "contao_html", null, true);
        echo "</strong>
    </div>
    ";
        // line 13
        if (($context["parent"] ?? null)) {
            // line 14
            echo "        <div>
            ";
            // line 15
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.parent", [], "contao_default"), "contao_html", null, true);
            echo ": <strong>";
            echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, ($context["parent"] ?? null), "table", [], "any", false, false, false, 15), "contao_html", null, true);
            echo ".";
            echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, ($context["parent"] ?? null), "id", [], "any", false, false, false, 15), "contao_html", null, true);
            echo "</strong>
        </div>
    ";
        }
        // line 18
        echo "</div>

<div class=\"tl_undo_preview\">
    ";
        // line 21
        if ( !twig_test_iterable(($context["preview"] ?? null))) {
            // line 22
            echo "        ";
            echo ($context["preview"] ?? null);
            echo "
    ";
        } else {
            // line 24
            echo "        <table>
            <tr>
                ";
            // line 26
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["preview"] ?? null));
            foreach ($context['_seq'] as $context["_key"] => $context["value"]) {
                // line 27
                echo "                    <td>";
                echo $context["value"];
                echo "</td>
                ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['_key'], $context['value'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 29
            echo "            </tr>
        </table>
    ";
        }
        // line 32
        echo "</div>
";
    }

    public function getTemplateName()
    {
        return "@ContaoCore/Backend/be_undo_label.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  122 => 32,  117 => 29,  108 => 27,  104 => 26,  100 => 24,  94 => 22,  92 => 21,  87 => 18,  77 => 15,  74 => 14,  72 => 13,  63 => 11,  51 => 8,  45 => 5,  41 => 4,  37 => 2,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoCore/Backend/be_undo_label.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/core-bundle/src/Resources/views/Backend/be_undo_label.html.twig");
    }
}
