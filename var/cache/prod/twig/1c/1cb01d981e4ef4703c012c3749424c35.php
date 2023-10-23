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

/* @ContaoInstallation/database.html.twig */
class __TwigTemplate_74bc51695a2138ee5165f4780a69317b extends Template
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
        $this->parent = $this->loadTemplate("@ContaoInstallation/layout.html.twig", "@ContaoInstallation/database.html.twig", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 4
    public function block_main($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 5
        echo "  <fieldset class=\"tl_tbox nolegend\">
    <div>
      <h3>";
        // line 7
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("database_connection", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</h3>
      ";
        // line 8
        if (array_key_exists("database_error", $context)) {
            // line 9
            echo "        <p class=\"tl_error\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["database_error"] ?? null), "contao_html", null, true);
            echo "</p>
      ";
        }
        // line 11
        echo "      <p>";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("database_connection_explain", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</p>
      <form method=\"post\">
        <div class=\"tl_formbody\">
          <input type=\"hidden\" name=\"FORM_SUBMIT\" value=\"tl_database_login\">
          <input type=\"hidden\" name=\"REQUEST_TOKEN\" value=\"";
        // line 15
        echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["request_token"] ?? null), "contao_html", null, true);
        echo "\">
          <h4><label for=\"dbHost\">";
        // line 16
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("database_host", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</label></h4>
          <input type=\"text\" name=\"dbHost\" id=\"dbHost\" class=\"tl_text\" value=\"";
        // line 17
        echo $this->env->getFilter('escape')->getCallable()($this->env, ((twig_get_attribute($this->env, $this->source, ($context["parameters"] ?? null), "database_host", [], "any", true, true, false, 17)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["parameters"] ?? null), "database_host", [], "any", false, false, false, 17), "localhost")) : ("localhost")), "contao_html", null, true);
        echo "\">
          <h4><label for=\"dbPort\">";
        // line 18
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("database_port", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</label></h4>
          <input type=\"text\" name=\"dbPort\" id=\"dbPort\" class=\"tl_text\" value=\"";
        // line 19
        echo $this->env->getFilter('escape')->getCallable()($this->env, ((twig_get_attribute($this->env, $this->source, ($context["parameters"] ?? null), "database_port", [], "any", true, true, false, 19)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["parameters"] ?? null), "database_port", [], "any", false, false, false, 19), 3306)) : (3306)), "contao_html", null, true);
        echo "\">
          <h4><label for=\"dbUser\">";
        // line 20
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("database_user", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</label></h4>
          <input type=\"text\" name=\"dbUser\" id=\"dbUser\" class=\"tl_text\" value=\"";
        // line 21
        echo $this->env->getFilter('escape')->getCallable()($this->env, ((twig_get_attribute($this->env, $this->source, ($context["parameters"] ?? null), "database_user", [], "any", true, true, false, 21)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["parameters"] ?? null), "database_user", [], "any", false, false, false, 21), "")) : ("")), "contao_html", null, true);
        echo "\">
          <h4><label for=\"dbPassword\">";
        // line 22
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("database_password", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</label></h4>
          <input type=\"password\" name=\"dbPassword\" id=\"dbPassword\" class=\"tl_text\" value=\"";
        // line 23
        echo $this->env->getFilter('escape')->getCallable()($this->env, ((twig_get_attribute($this->env, $this->source, ($context["parameters"] ?? null), "database_password", [], "any", true, true, false, 23)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["parameters"] ?? null), "database_password", [], "any", false, false, false, 23), "")) : ("")), "contao_html", null, true);
        echo "\">
          <h4><label for=\"dbName\">";
        // line 24
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("database_name", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</label></h4>
          <input type=\"text\" name=\"dbName\" id=\"dbName\" class=\"tl_text\" value=\"";
        // line 25
        echo $this->env->getFilter('escape')->getCallable()($this->env, ((twig_get_attribute($this->env, $this->source, ($context["parameters"] ?? null), "database_name", [], "any", true, true, false, 25)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["parameters"] ?? null), "database_name", [], "any", false, false, false, 25), "")) : ("")), "contao_html", null, true);
        echo "\">
        </div>
        <div class=\"tl_formbody_submit\">
          <div class=\"tl_submit_container\">
            <button type=\"submit\" class=\"tl_submit\">";
        // line 29
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("save_settings", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</button>
          </div>
        </div>
      </form>
    </div>
  </fieldset>
  <script>
    \$('dbHost').focus();
  </script>
";
    }

    public function getTemplateName()
    {
        return "@ContaoInstallation/database.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  121 => 29,  114 => 25,  110 => 24,  106 => 23,  102 => 22,  98 => 21,  94 => 20,  90 => 19,  86 => 18,  82 => 17,  78 => 16,  74 => 15,  66 => 11,  60 => 9,  58 => 8,  54 => 7,  50 => 5,  46 => 4,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoInstallation/database.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/installation-bundle/src/Resources/views/database.html.twig");
    }
}
