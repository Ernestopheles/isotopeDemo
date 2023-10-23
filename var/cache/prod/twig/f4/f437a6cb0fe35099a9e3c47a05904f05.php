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

/* @ContaoCore/Backend/be_filesync_report.html.twig */
class __TwigTemplate_5a3311d608f6e12aba4cc1682ae64ab1 extends Template
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
        echo "
";
        // line 4
        echo "<div class=\"tl_message\">
    <p class=\"tl_confirm\">";
        // line 5
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_files.syncComplete", [], "contao_tl_files"), "contao_html", null, true);
        echo "</p>
</div>
<div id=\"tl_buttons\">
    <a href=\"";
        // line 8
        echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["referer"] ?? null), "contao_html", null, true);
        echo "\" class=\"header_back\" title=\"";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.backBTTitle", [], "contao_default"), "contao_html", null, true);
        echo "\" accesskey=\"b\" onclick=\"Backend.getScrollOffset()\">";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.backBT", [], "contao_default"), "contao_html", null, true);
        echo "</a>
</div>

";
        // line 12
        echo "<div id=\"result-list\">
    ";
        // line 13
        $context["modified"] = twig_array_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["change_set"] ?? null), "itemsToUpdate", [], "any", false, false, false, 13), function ($__item__) use ($context, $macros) { $context["item"] = $__item__; return twig_get_attribute($this->env, $this->source, ($context["item"] ?? null), "updatesHash", [], "any", false, false, false, 13); });
        // line 14
        echo "    ";
        $context["moved"] = twig_array_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["change_set"] ?? null), "itemsToUpdate", [], "any", false, false, false, 14), function ($__item__) use ($context, $macros) { $context["item"] = $__item__; return twig_get_attribute($this->env, $this->source, ($context["item"] ?? null), "updatesPath", [], "any", false, false, false, 14); });
        // line 15
        echo "
    <p>";
        // line 16
        echo $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_files.syncResult", [twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["change_set"] ?? null), "itemsToCreate", [], "any", false, false, false, 16)), twig_length_filter($this->env, ($context["modified"] ?? null)), "-", twig_length_filter($this->env, ($context["moved"] ?? null)), twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["change_set"] ?? null), "itemsToDelete", [], "any", false, false, false, 16))], "contao_tl_files");
        echo "</p>

    ";
        // line 19
        echo "    ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["change_set"] ?? null), "itemsToCreate", [], "any", false, false, false, 19));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 20
            echo "        <p class=\"tl_new\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_files.syncAdded", [twig_get_attribute($this->env, $this->source, $context["item"], "path", [], "any", false, false, false, 20)], "contao_tl_files"), "contao_html", null, true);
            echo "</p>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 22
        echo "
    ";
        // line 24
        echo "    ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["modified"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 25
            echo "        <p class=\"tl_info\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_files.syncChanged", [twig_get_attribute($this->env, $this->source, $context["item"], "existingPath", [], "any", false, false, false, 25)], "contao_tl_files"), "contao_html", null, true);
            echo "</p>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 27
        echo "
    ";
        // line 29
        echo "    ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["moved"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 30
            echo "        <p class=\"tl_info\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_files.syncMoved", [twig_get_attribute($this->env, $this->source, $context["item"], "existingPath", [], "any", false, false, false, 30), twig_get_attribute($this->env, $this->source, $context["item"], "newPath", [], "any", false, false, false, 30)], "contao_tl_files"), "contao_html", null, true);
            echo "</p>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 32
        echo "
    ";
        // line 34
        echo "    ";
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, ($context["change_set"] ?? null), "itemsToDelete", [], "any", false, false, false, 34));
        foreach ($context['_seq'] as $context["_key"] => $context["item"]) {
            // line 35
            echo "        <p class=\"tl_error\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("tl_files.syncDeleted", [twig_get_attribute($this->env, $this->source, $context["item"], "path", [], "any", false, false, false, 35)], "contao_tl_files"), "contao_html", null, true);
            echo "</p>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['item'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 37
        echo "</div>

";
        // line 40
        echo "<div class=\"tl_formbody_submit\">
    <div class=\"tl_submit_container\">
        <a href=\"";
        // line 42
        echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["referer"] ?? null), "contao_html", null, true);
        echo "\" class=\"tl_submit\" style=\"display:inline-block\">";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.continue", [], "contao_default"), "contao_html", null, true);
        echo "</a>
    </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "@ContaoCore/Backend/be_filesync_report.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  148 => 42,  144 => 40,  140 => 37,  131 => 35,  126 => 34,  123 => 32,  114 => 30,  109 => 29,  106 => 27,  97 => 25,  92 => 24,  89 => 22,  80 => 20,  75 => 19,  70 => 16,  67 => 15,  64 => 14,  62 => 13,  59 => 12,  49 => 8,  43 => 5,  40 => 4,  37 => 2,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoCore/Backend/be_filesync_report.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/core-bundle/src/Resources/views/Backend/be_filesync_report.html.twig");
    }
}
