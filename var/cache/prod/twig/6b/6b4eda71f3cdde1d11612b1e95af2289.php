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

/* @ContaoInstallation/password.html.twig */
class __TwigTemplate_83bf38b51c17dc39fb7f5a734231897d extends Template
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
        $this->parent = $this->loadTemplate("@ContaoInstallation/layout.html.twig", "@ContaoInstallation/password.html.twig", 1);
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
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("set_password", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</h3>
    ";
        // line 7
        if (array_key_exists("error", $context)) {
            // line 8
            echo "      <p class=\"tl_error\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["error"] ?? null), "contao_html", null, true);
            echo "</p>
    ";
        }
        // line 10
        echo "    <p>";
        echo $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("set_password_hint", [], "ContaoInstallationBundle");
        echo "</p>
    <form method=\"post\">
      <div class=\"tl_formbody\">
        <input type=\"hidden\" name=\"FORM_SUBMIT\" value=\"tl_password\">
        <input type=\"hidden\" name=\"REQUEST_TOKEN\" value=\"";
        // line 14
        echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["request_token"] ?? null), "contao_html", null, true);
        echo "\">
        <h4><label for=\"password\">";
        // line 15
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("password", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</label></h4>
        <input type=\"password\" name=\"password\" id=\"password\" class=\"tl_text\" value=\"\" autocomplete=\"new-password\">
        <img src=\"../../system/themes/flexible/icons/visible.svg\" width=\"16\" height=\"16\" alt=\"\" title=\"";
        // line 17
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("show_password", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "\" id=\"pw_password\"/>
      </div>
      <div class=\"tl_formbody_submit\">
        <div class=\"tl_submit_container\">
          <button type=\"submit\" class=\"tl_submit\">";
        // line 21
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("save_password", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</button>
        </div>
      </div>
    </form>
  </fieldset>
  <script>
    \$('password').focus();
    \$('pw_password').addEvent('click', function(e) {
      e.preventDefault();
      var el = \$('password');
      if (el.type == 'password') {
        el.type = 'text';
        this.store('tip:title', '";
        // line 33
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("hide_password", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "');
        this.src = this.src.replace('visible.svg', 'visible_.svg');
      } else {
        el.type = 'password';
        this.store('tip:title', '";
        // line 37
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("show_password", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "');
        this.src = this.src.replace('visible_.svg', 'visible.svg');
      }
    });
  </script>
";
    }

    public function getTemplateName()
    {
        return "@ContaoInstallation/password.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  111 => 37,  104 => 33,  89 => 21,  82 => 17,  77 => 15,  73 => 14,  65 => 10,  59 => 8,  57 => 7,  53 => 6,  50 => 5,  46 => 4,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoInstallation/password.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/installation-bundle/src/Resources/views/password.html.twig");
    }
}
