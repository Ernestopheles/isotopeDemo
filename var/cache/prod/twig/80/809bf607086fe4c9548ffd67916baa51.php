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

/* @SchebTwoFactor/Authentication/form.html.twig */
class __TwigTemplate_87f9a47601e34b71fcf7eebbce8ddbfb extends Template
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
        // line 5
        echo "
";
        // line 7
        if (($context["authenticationError"] ?? null)) {
            // line 8
            echo "<p>";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans(($context["authenticationError"] ?? null), ($context["authenticationErrorData"] ?? null), "SchebTwoFactorBundle"), "html", null, true);
            echo "</p>
";
        }
        // line 10
        echo "
";
        // line 12
        echo "<p>";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("choose_provider", [], "SchebTwoFactorBundle"), "html", null, true);
        echo ":
    ";
        // line 13
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["availableTwoFactorProviders"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["provider"]) {
            // line 14
            echo "        <a href=\"";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("2fa_login", ["preferProvider" => $context["provider"]]), "html", null, true);
            echo "\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $context["provider"], "html", null, true);
            echo "</a>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['provider'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 16
        echo "</p>

";
        // line 19
        echo "<p class=\"label\"><label for=\"_auth_code\">";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("auth_code", [], "SchebTwoFactorBundle"), "html", null, true);
        echo " ";
        echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["twoFactorProvider"] ?? null), "html", null, true);
        echo ":</label></p>

<form class=\"form\" action=\"";
        // line 21
        ((($context["checkPathUrl"] ?? null)) ? (print ($this->env->getFilter('escape')->getCallable()($this->env, ($context["checkPathUrl"] ?? null), "html", null, true))) : (print ($this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath(($context["checkPathRoute"] ?? null)))));
        echo "\" method=\"post\">
    <p class=\"widget\">
        <input
            id=\"_auth_code\"
            type=\"text\"
            name=\"";
        // line 26
        echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["authCodeParameterName"] ?? null), "html", null, true);
        echo "\"
            autocomplete=\"one-time-code\"
            autofocus
            ";
        // line 35
        echo "        />
    </p>

    ";
        // line 38
        if (($context["displayTrustedOption"] ?? null)) {
            // line 39
            echo "        <p class=\"widget\"><label for=\"_trusted\"><input id=\"_trusted\" type=\"checkbox\" name=\"";
            echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["trustedParameterName"] ?? null), "html", null, true);
            echo "\" /> ";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("trusted", [], "SchebTwoFactorBundle"), "html", null, true);
            echo "</label></p>
    ";
        }
        // line 41
        echo "    ";
        if (($context["isCsrfProtectionEnabled"] ?? null)) {
            // line 42
            echo "        <input type=\"hidden\" name=\"";
            echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["csrfParameterName"] ?? null), "html", null, true);
            echo "\" value=\"";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->env->getRuntime('Symfony\Bridge\Twig\Extension\CsrfRuntime')->getCsrfToken(($context["csrfTokenId"] ?? null)), "html", null, true);
            echo "\">
    ";
        }
        // line 44
        echo "    <p class=\"submit\"><input type=\"submit\" value=\"";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("login", [], "SchebTwoFactorBundle"), "html", null, true);
        echo "\" /></p>
</form>

";
        // line 48
        echo "<p class=\"cancel\"><a href=\"";
        echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["logoutPath"] ?? null), "html", null, true);
        echo "\">";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("cancel", [], "SchebTwoFactorBundle"), "html", null, true);
        echo "</a></p>
";
    }

    public function getTemplateName()
    {
        return "@SchebTwoFactor/Authentication/form.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  130 => 48,  123 => 44,  115 => 42,  112 => 41,  104 => 39,  102 => 38,  97 => 35,  91 => 26,  83 => 21,  75 => 19,  71 => 16,  60 => 14,  56 => 13,  51 => 12,  48 => 10,  42 => 8,  40 => 7,  37 => 5,);
    }

    public function getSourceContext()
    {
        return new Source("", "@SchebTwoFactor/Authentication/form.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/scheb/2fa-bundle/Resources/views/Authentication/form.html.twig");
    }
}
