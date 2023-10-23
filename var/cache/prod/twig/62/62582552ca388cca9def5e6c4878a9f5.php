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

/* @ContaoCore/Frontend/preview_toolbar_base.html.twig */
class __TwigTemplate_86d7de1806880a253a58dfa49bb1ffbe extends Template
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
        echo "<div class=\"cto-toolbar__open\">
    <a href=\"#\" title=\"";
        // line 3
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.openToolbar", [], "contao_default"), "contao_html", null, true);
        echo "\">";
        echo $this->env->getFunction('include')->getCallable()($this->env, $context, "@ContaoCore/Collector/contao.svg");
        echo "</a>
</div>
<div
    class=\"cto-toolbar__inside\"
    ";
        // line 7
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["attributes"] ?? null));
        foreach ($context['_seq'] as $context["key"] => $context["value"]) {
            // line 8
            echo "        data-";
            echo $this->env->getFilter('e')->getCallable()($this->env, $context["key"], "contao_html_attr", null, true);
            echo "=\"";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $context["value"], "contao_html", null, true);
            echo "\"
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['key'], $context['value'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 10
        echo ">
    <form action=\"";
        // line 11
        echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["action"] ?? null), "contao_html", null, true);
        echo "\" method=\"post\" autocomplete=\"off\">
        <div class=\"formbody\">
            ";
        // line 13
        if (($context["badgeTitle"] ?? null)) {
            // line 14
            echo "                <span class=\"badge-title\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["badgeTitle"] ?? null), "contao_html", null, true);
            echo "</span>
            ";
        }
        // line 16
        echo "            <input type=\"hidden\" name=\"FORM_SUBMIT\" value=\"tl_switch\">
            <input type=\"hidden\" name=\"REQUEST_TOKEN\" value=\"";
        // line 17
        echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["request_token"] ?? null), "contao_html", null, true);
        echo "\">
            <div>
                <button type=\"button\" id=\"copyPublishedPath\" class=\"tl_submit\">";
        // line 19
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.copyURL", [], "contao_default"), "contao_html", null, true);
        echo "</button>
                ";
        // line 20
        if ( !twig_test_empty(($context["share"] ?? null))) {
            // line 21
            echo "                    <a href=\"";
            echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["share"] ?? null), "contao_html", null, true);
            echo "\" target=\"_blank\" class=\"tl_submit\" onclick=\"window.open(this.href+'&amp;url='+location.href);return false\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.shareURL", [], "contao_default"), "contao_html", null, true);
            echo "</a>
                ";
        }
        // line 23
        echo "            </div>
            ";
        // line 24
        if (($context["canSwitchUser"] ?? null)) {
            // line 25
            echo "                <div>
                    <label for=\"ctrl_user\">";
            // line 26
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.feUser", [], "contao_default"), "contao_html", null, true);
            echo ":</label>
                    <input type=\"text\" name=\"user\" id=\"ctrl_user\" list=\"userlist\" class=\"tl_text user\" placeholder=\"";
            // line 27
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.username", [], "contao_default"), "contao_html", null, true);
            echo "\" value=\"";
            echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["user"] ?? null), "contao_html", null, true);
            echo "\">
                    <datalist id=\"userlist\"></datalist>
                </div>
            ";
        }
        // line 31
        echo "            <div>
                <label for=\"ctrl_unpublished\">";
        // line 32
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.hiddenElements", [], "contao_default"), "contao_html", null, true);
        echo ":</label>
                <select name=\"unpublished\" id=\"ctrl_unpublished\" class=\"tl_select\">
                    <option value=\"hide\">";
        // line 34
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.hiddenHide", [], "contao_default"), "contao_html", null, true);
        echo "</option>
                    <option value=\"show\"";
        // line 35
        if (($context["show"] ?? null)) {
            echo " selected";
        }
        echo ">";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.hiddenShow", [], "contao_default"), "contao_html", null, true);
        echo "</option>
                </select>
                <button type=\"submit\" class=\"tl_submit\">";
        // line 37
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.apply", [], "contao_default"), "contao_html", null, true);
        echo "</button>
            </div>
        </div>
    </form>
    <div class=\"cto-toolbar__close\"><a href=\"#\" title=\"";
        // line 41
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("MSC.closeToolbar", [], "contao_default"), "contao_html", null, true);
        echo "\">&times;</a></div>
</div>
<div class=\"cto-toolbar__clear\"></div>
";
    }

    public function getTemplateName()
    {
        return "@ContaoCore/Frontend/preview_toolbar_base.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  151 => 41,  144 => 37,  135 => 35,  131 => 34,  126 => 32,  123 => 31,  114 => 27,  110 => 26,  107 => 25,  105 => 24,  102 => 23,  94 => 21,  92 => 20,  88 => 19,  83 => 17,  80 => 16,  74 => 14,  72 => 13,  67 => 11,  64 => 10,  53 => 8,  49 => 7,  40 => 3,  37 => 2,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoCore/Frontend/preview_toolbar_base.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/core-bundle/src/Resources/views/Frontend/preview_toolbar_base.html.twig");
    }
}
