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

/* @ContaoInstallation/main.html.twig */
class __TwigTemplate_c38de1093c64ac65852cbd0d5fde84d0 extends Template
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
        $this->parent = $this->loadTemplate("@ContaoInstallation/layout.html.twig", "@ContaoInstallation/main.html.twig", 1);
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 4
    public function block_main($context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 5
        echo "  ";
        if (array_key_exists("optionKey", $context)) {
            // line 6
            echo "    <fieldset class=\"tl_tbox nolegend\">
        <p class=\"tl_error\">";
            // line 7
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("strict_sql_mode", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</p>
        <p>";
            // line 8
            echo $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("strict_sql_mode_explain", [], "ContaoInstallationBundle");
            echo "</p>
        <div id=\"sql_wrapper\">
        <pre>doctrine:
    dbal:
        connections:
            default:
                options:
                    ";
            // line 15
            echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["optionKey"] ?? null), "contao_html", null, true);
            echo ": \"SET SESSION sql_mode=(SELECT CONCAT(@@sql_mode, ',TRADITIONAL'))\"</pre>
        </div>
    </fieldset>
  ";
        }
        // line 19
        echo "  <fieldset class=\"tl_tbox";
        if ((twig_test_empty(($context["sql_form"] ?? null)) && twig_test_empty(($context["sql_message"] ?? null)))) {
            echo " collapsed";
        }
        echo "\">
    <legend onclick=\"this.getParent().toggleClass('collapsed')\">";
        // line 20
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("update_tables", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</legend>
    <div>
      <h3>";
        // line 22
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("update_tables", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</h3>
      ";
        // line 23
        if (twig_test_empty(($context["sql_form"] ?? null))) {
            // line 24
            echo "        <p class=\"tl_confirm\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("update_tables_confirm", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</p>
      ";
        }
        // line 26
        echo "      <p>";
        echo $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("update_tables_explain", [], "ContaoInstallationBundle");
        echo "</p>
      ";
        // line 27
        if ( !twig_test_empty(($context["sql_message"] ?? null))) {
            // line 28
            echo "        <div id=\"sql_message\">";
            echo ($context["sql_message"] ?? null);
            echo "</div>
      ";
        }
        // line 30
        echo "      ";
        if ( !twig_test_empty(($context["sql_form"] ?? null))) {
            // line 31
            echo "        <form method=\"post\">
          <div class=\"tl_formbody\">
            <input type=\"hidden\" name=\"FORM_SUBMIT\" value=\"tl_database_update\">
            <input type=\"hidden\" name=\"REQUEST_TOKEN\" value=\"";
            // line 34
            echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["request_token"] ?? null), "contao_html", null, true);
            echo "\">
            <div id=\"sql_wrapper\">
              <table id=\"sql_table\">
              ";
            // line 37
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(($context["sql_form"] ?? null));
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
            foreach ($context['_seq'] as $context["category"] => $context["commands"]) {
                // line 38
                echo "                ";
                if ( !twig_test_empty($context["commands"])) {
                    // line 39
                    echo "                  <tr>
                    <td colspan=\"2\" class=\"tl_col_0\">";
                    // line 40
                    echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans($context["category"], [], "ContaoInstallationBundle"), "contao_html", null, true);
                    echo "</td>
                  </tr>
                  <tr>
                    <td class=\"tl_col_1\"><input type=\"checkbox\" id=\"check_all_";
                    // line 43
                    echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, $context["loop"], "index", [], "any", false, false, false, 43), "contao_html", null, true);
                    echo "\" class=\"tl_checkbox\" onclick=\"Backend.toggleCheckboxElements(this, '";
                    echo $this->env->getFilter('escape')->getCallable()($this->env, $context["category"], "contao_html", null, true);
                    echo "')\"";
                    if ((!twig_in_filter("DROP", $context["category"]) || twig_in_filter("DROP INDEX", $context["category"]))) {
                        echo " checked";
                    }
                    echo "></td>
                    <td class=\"tl_col_2\"><label for=\"check_all_";
                    // line 44
                    echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, $context["loop"], "index", [], "any", false, false, false, 44), "contao_html", null, true);
                    echo "\" style=\"color:#a6a6a6\"><em>";
                    echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("select_all", [], "ContaoInstallationBundle"), "contao_html", null, true);
                    echo "</em></label></td>
                  </tr>
                  ";
                    // line 46
                    $context['_parent'] = $context;
                    $context['_seq'] = twig_ensure_traversable($context["commands"]);
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
                    foreach ($context['_seq'] as $context["md5"] => $context["command"]) {
                        // line 47
                        echo "                    <tr>
                      <td class=\"tl_col_1\"><input type=\"checkbox\" name=\"sql[]\" id=\"sql_";
                        // line 48
                        echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["loop"], "parent", [], "any", false, false, false, 48), "loop", [], "any", false, false, false, 48), "index", [], "any", false, false, false, 48), "contao_html", null, true);
                        echo "_";
                        echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, $context["loop"], "index", [], "any", false, false, false, 48), "contao_html", null, true);
                        echo "\" class=\"tl_checkbox ";
                        echo $this->env->getFilter('escape')->getCallable()($this->env, $context["category"], "contao_html", null, true);
                        echo "\" value=\"";
                        echo $this->env->getFilter('escape')->getCallable()($this->env, $context["md5"], "contao_html", null, true);
                        echo "\"";
                        if ((!twig_in_filter("DROP", $context["command"]) || twig_in_filter("DROP INDEX", $context["command"]))) {
                            echo " checked";
                        }
                        echo "></td>
                      <td class=\"tl_col_2\"><pre><label for=\"sql_";
                        // line 49
                        echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, $context["loop"], "parent", [], "any", false, false, false, 49), "loop", [], "any", false, false, false, 49), "index", [], "any", false, false, false, 49), "contao_html", null, true);
                        echo "_";
                        echo $this->env->getFilter('escape')->getCallable()($this->env, twig_get_attribute($this->env, $this->source, $context["loop"], "index", [], "any", false, false, false, 49), "contao_html", null, true);
                        echo "\">";
                        if (twig_in_filter("CREATE", $context["command"])) {
                            echo $this->extensions['Doctrine\Bundle\DoctrineBundle\Twig\DoctrineExtension']->formatQuery($context["command"]);
                        } else {
                            echo $this->env->getFilter('escape')->getCallable()($this->env, $context["command"], "contao_html", null, true);
                        }
                        echo "</label></pre></td>
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
                    unset($context['_seq'], $context['_iterated'], $context['md5'], $context['command'], $context['_parent'], $context['loop']);
                    $context = array_intersect_key($context, $_parent) + $_parent;
                    // line 52
                    echo "                ";
                }
                // line 53
                echo "              ";
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
            unset($context['_seq'], $context['_iterated'], $context['category'], $context['commands'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 54
            echo "              </table>
            </div>
          </div>
          <div class=\"tl_formbody_submit\">
            <div class=\"tl_submit_container\">
              <button type=\"submit\" class=\"tl_submit\">";
            // line 59
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("update_save", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</button>
            </div>
          </div>
        </form>
      ";
        }
        // line 64
        echo "    </div>
  </fieldset>
  <fieldset class=\"tl_box";
        // line 66
        if (($context["has_admin"] ?? null)) {
            echo " collapsed";
        }
        echo "\">
    <legend onclick=\"this.getParent().toggleClass('collapsed')\">";
        // line 67
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("template_import", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</legend>
    <div>
      <h3>";
        // line 69
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("template_import", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</h3>
      ";
        // line 70
        if (array_key_exists("import_error", $context)) {
            // line 71
            echo "        <p class=\"tl_error\">";
            echo twig_nl2br($this->env->getFilter('escape')->getCallable()($this->env, ($context["import_error"] ?? null), "contao_html", null, true));
            echo "</p>
      ";
        } elseif (        // line 72
array_key_exists("import_date", $context)) {
            // line 73
            echo "        <p class=\"tl_confirm\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, twig_sprintf($this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("imported_on", [], "ContaoInstallationBundle"), ($context["import_date"] ?? null)), "contao_html", null, true);
            echo "</p>
      ";
        } else {
            // line 75
            echo "        <p class=\"tl_info\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("import_data_will_be_deleted", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</p>
      ";
        }
        // line 77
        echo "      <p>";
        echo $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("template_import_explain", [], "ContaoInstallationBundle");
        echo "</p>
      <form method=\"post\">
        <div class=\"tl_formbody_submit\">
          <input type=\"hidden\" name=\"FORM_SUBMIT\" value=\"tl_template_import\">
          <input type=\"hidden\" name=\"REQUEST_TOKEN\" value=\"";
        // line 81
        echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["request_token"] ?? null), "contao_html", null, true);
        echo "\">
          <h4><label for=\"template\">";
        // line 82
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("templates", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</label></h4>
          <select name=\"template\" id=\"template\" class=\"tl_select\" required>
            <option value=\"\">-</option>
            ";
        // line 85
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["templates"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["template"]) {
            // line 86
            echo "              <option value=\"";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $context["template"], "contao_html", null, true);
            echo "\">";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $context["template"], "contao_html", null, true);
            echo "</option>
            ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['template'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 88
        echo "          </select>
          <div class=\"tl_checkbox_container\" style=\"margin-top:3px\">
            <input type=\"checkbox\" name=\"preserve\" id=\"ctrl_preserve\" class=\"tl_checkbox\" value=\"1\"> <label for=\"ctrl_preserve\">";
        // line 90
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("do_not_truncate", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</label>
          </div>
        </div>
        <div class=\"tl_formbody_submit\">
          <div class=\"tl_submit_container\">
            <button type=\"submit\" class=\"tl_submit\" onclick=\"if(!confirm('";
        // line 95
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("import_confirm", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "'))return false;Backend.getScrollOffset()\">";
        echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("template_save", [], "ContaoInstallationBundle"), "contao_html", null, true);
        echo "</button>
          </div>
        </div>
      </form>
    </div>
  </fieldset>
  ";
        // line 101
        if ( !($context["hide_admin"] ?? null)) {
            // line 102
            echo "    <fieldset class=\"tl_box";
            if (($context["has_admin"] ?? null)) {
                echo " collapsed";
            }
            echo "\">
      <legend onclick=\"this.getParent().toggleClass('collapsed')\">";
            // line 103
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("admin_create", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</legend>
      <div>
        <h3>";
            // line 105
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("admin_create", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</h3>
        ";
            // line 106
            if (array_key_exists("admin_error", $context)) {
                // line 107
                echo "          <p class=\"tl_error\">";
                echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["admin_error"] ?? null), "contao_html", null, true);
                echo "</p>
        ";
            } elseif (            // line 108
($context["has_admin"] ?? null)) {
                // line 109
                echo "          <p class=\"tl_confirm\">";
                echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("admin_confirm", [], "ContaoInstallationBundle"), "contao_html", null, true);
                echo "</p>
        ";
            }
            // line 111
            echo "        <p>";
            echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("admin_create_explain", [], "ContaoInstallationBundle"), "contao_html", null, true);
            echo "</p>
        ";
            // line 112
            if ( !($context["has_admin"] ?? null)) {
                // line 113
                echo "          <form method=\"post\">
            <div class=\"tl_formbody\">
              <input type=\"hidden\" name=\"FORM_SUBMIT\" value=\"tl_admin\">
              <input type=\"hidden\" name=\"REQUEST_TOKEN\" value=\"";
                // line 116
                echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["request_token"] ?? null), "contao_html", null, true);
                echo "\">
              <h4><label for=\"username\">";
                // line 117
                echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("admin_username", [], "ContaoInstallationBundle"), "contao_html", null, true);
                echo "</label></h4>
              ";
                // line 118
                if (array_key_exists("admin_username_error", $context)) {
                    // line 119
                    echo "                <p class=\"tl_error\">";
                    echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["admin_username_error"] ?? null), "contao_html", null, true);
                    echo "</p>
              ";
                }
                // line 121
                echo "              <input type=\"text\" name=\"username\" id=\"username\" class=\"tl_text\" value=\"";
                echo $this->env->getFilter('escape')->getCallable()($this->env, ((array_key_exists("admin_username_value", $context)) ? (_twig_default_filter(($context["admin_username_value"] ?? null))) : ("")), "contao_html", null, true);
                echo "\" required>
              <h4><label for=\"name\">";
                // line 122
                echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("admin_name", [], "ContaoInstallationBundle"), "contao_html", null, true);
                echo "</label></h4>
              <input type=\"text\" name=\"name\" id=\"name\" class=\"tl_text\" value=\"";
                // line 123
                echo $this->env->getFilter('escape')->getCallable()($this->env, ((array_key_exists("admin_name_value", $context)) ? (_twig_default_filter(($context["admin_name_value"] ?? null))) : ("")), "contao_html", null, true);
                echo "\" required>
              <h4><label for=\"email\">";
                // line 124
                echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("admin_email", [], "ContaoInstallationBundle"), "contao_html", null, true);
                echo "</label></h4>
              ";
                // line 125
                if (array_key_exists("admin_email_error", $context)) {
                    // line 126
                    echo "                <p class=\"tl_error\">";
                    echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["admin_email_error"] ?? null), "contao_html", null, true);
                    echo "</p>
              ";
                }
                // line 128
                echo "              <input type=\"email\" name=\"email\" id=\"email\" class=\"tl_text\" value=\"";
                echo $this->env->getFilter('escape')->getCallable()($this->env, ((array_key_exists("admin_email_value", $context)) ? (_twig_default_filter(($context["admin_email_value"] ?? null))) : ("")), "contao_html", null, true);
                echo "\" required>
              <h4><label for=\"password\">";
                // line 129
                echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("password", [], "ContaoInstallationBundle"), "contao_html", null, true);
                echo "</label></h4>
              ";
                // line 130
                if (array_key_exists("admin_password_error", $context)) {
                    // line 131
                    echo "                <p class=\"tl_error\">";
                    echo $this->env->getFilter('escape')->getCallable()($this->env, ($context["admin_password_error"] ?? null), "contao_html", null, true);
                    echo "</p>
              ";
                }
                // line 133
                echo "              <input type=\"password\" name=\"password\" id=\"password\" class=\"tl_text\" value=\"";
                echo $this->env->getFilter('escape')->getCallable()($this->env, ((array_key_exists("admin_password_value", $context)) ? (_twig_default_filter(($context["admin_password_value"] ?? null))) : ("")), "contao_html", null, true);
                echo "\" required>
            </div>
            <div class=\"tl_formbody_submit\">
              <div class=\"tl_submit_container\">
                <button type=\"submit\" class=\"tl_submit\">";
                // line 137
                echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("admin_save", [], "ContaoInstallationBundle"), "contao_html", null, true);
                echo "</button>
              </div>
            </div>
          </form>
        ";
            }
            // line 142
            echo "      </div>
    </fieldset>
    ";
            // line 144
            if (($context["has_admin"] ?? null)) {
                // line 145
                echo "      <fieldset class=\"tl_box last\">
        <legend onclick=\"this.getParent().toggleClass('collapsed')\">";
                // line 146
                echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("installation_complete", [], "ContaoInstallationBundle"), "contao_html", null, true);
                echo "</legend>
        <div>
          <h3>";
                // line 148
                echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("congratulations", [], "ContaoInstallationBundle"), "contao_html", null, true);
                echo "</h3>
          <p class=\"tl_confirm\">";
                // line 149
                echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("congratulations_explain", [], "ContaoInstallationBundle"), "contao_html", null, true);
                echo "</p>
          <p>";
                // line 150
                echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("installation_complete_explain", [], "ContaoInstallationBundle"), "contao_html", null, true);
                echo "</p>
        </div>
      </fieldset>
      <p id=\"back_end\"><a href=\"";
                // line 153
                echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("contao_backend", [], true);
                echo "\">";
                echo $this->env->getFilter('escape')->getCallable()($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\TranslationExtension']->trans("back_end", [], "ContaoInstallationBundle"), "contao_html", null, true);
                echo " ›</a></p>
    ";
            }
            // line 155
            echo "  ";
        }
    }

    public function getTemplateName()
    {
        return "@ContaoInstallation/main.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  515 => 155,  508 => 153,  502 => 150,  498 => 149,  494 => 148,  489 => 146,  486 => 145,  484 => 144,  480 => 142,  472 => 137,  464 => 133,  458 => 131,  456 => 130,  452 => 129,  447 => 128,  441 => 126,  439 => 125,  435 => 124,  431 => 123,  427 => 122,  422 => 121,  416 => 119,  414 => 118,  410 => 117,  406 => 116,  401 => 113,  399 => 112,  394 => 111,  388 => 109,  386 => 108,  381 => 107,  379 => 106,  375 => 105,  370 => 103,  363 => 102,  361 => 101,  350 => 95,  342 => 90,  338 => 88,  327 => 86,  323 => 85,  317 => 82,  313 => 81,  305 => 77,  299 => 75,  293 => 73,  291 => 72,  286 => 71,  284 => 70,  280 => 69,  275 => 67,  269 => 66,  265 => 64,  257 => 59,  250 => 54,  236 => 53,  233 => 52,  208 => 49,  194 => 48,  191 => 47,  174 => 46,  167 => 44,  157 => 43,  151 => 40,  148 => 39,  145 => 38,  128 => 37,  122 => 34,  117 => 31,  114 => 30,  108 => 28,  106 => 27,  101 => 26,  95 => 24,  93 => 23,  89 => 22,  84 => 20,  77 => 19,  70 => 15,  60 => 8,  56 => 7,  53 => 6,  50 => 5,  46 => 4,  35 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoInstallation/main.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/installation-bundle/src/Resources/views/main.html.twig");
    }
}
