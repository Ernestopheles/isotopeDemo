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

/* @ContaoInstallation/login.html.twig */
class __TwigTemplate_e52e84b948670e52d653471a6dfe4407 extends Template
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
        $this->parent = $this->loadTemplate("@ContaoInstallation/layout.html.twig", "@ContaoInstallation/login.html.twig", 1);
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
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("login", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</h3>
    <p class=\"tl_info\" id=\"cookies\">";
        // line 7
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("allow_cookies", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</p>
    ";
        // line 8
        if (array_key_exists("error", $context)) {
            // line 9
            echo "      <p class=\"tl_error\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["error"] ?? null), "contao_html", null, true);
            echo "</p>
    ";
        }
        // line 11
        echo "    <p>";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("login_explanation", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</p>
    <form method=\"post\">
      <div class=\"tl_formbody\">
        <input type=\"hidden\" name=\"FORM_SUBMIT\" value=\"tl_login\">
        <input type=\"hidden\" name=\"REQUEST_TOKEN\" value=\"";
        // line 15
        echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["request_token"] ?? null), "contao_html", null, true);
        echo "\">
        <h4><label for=\"password\">";
        // line 16
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("password", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</label></h4>
        <input type=\"password\" name=\"password\" id=\"password\" class=\"tl_text\" value=\"\" autocomplete=\"current-password\">
      </div>
      <div class=\"tl_formbody_submit\">
        <div class=\"tl_submit_container\">
          <button type=\"submit\" class=\"tl_submit\">";
        // line 21
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("login", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</button>
        </div>
      </div>
    </form>
  </fieldset>
  <script>
    \$('password').focus();
    navigator.cookieEnabled && \$('cookies').destroy();
  </script>
";
    }

    public function getTemplateName()
    {
        return "@ContaoInstallation/login.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  89 => 21,  81 => 16,  77 => 15,  69 => 11,  63 => 9,  61 => 8,  57 => 7,  53 => 6,  50 => 5,  46 => 4,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoInstallation/login.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/installation-bundle/src/Resources/views/login.html.twig");
    }
}
