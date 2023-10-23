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

/* @ContaoCore/Image/Studio/_macros.html.twig */
class __TwigTemplate_30f2a5e02587c1c8f5af6a3c944e398e extends Template
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
        $macros["_self"] = $this->macros["_self"] = $this;
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 2
        echo "
";
        // line 42
        echo "

";
        // line 102
        echo "
";
    }

    // line 50
    public function macro_figure($__figure__ = null, $__options__ = [], $__addSchemaOrg__ = true, ...$__varargs__)
    {
        $macros = $this->macros;
        $context = $this->env->mergeGlobals([
            "figure" => $__figure__,
            "options" => $__options__,
            "addSchemaOrg" => $__addSchemaOrg__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 51
            $context["figure_attributes"] = twig_array_merge(((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 51), "attr", [], "any", true, true, false, 51)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 51), "attr", [], "any", false, false, false, 51), [])) : ([])), ((twig_get_attribute($this->env, $this->source, ($context["options"] ?? null), "attr", [], "any", true, true, false, 51)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["options"] ?? null), "attr", [], "any", false, false, false, 51), [])) : ([])));
            // line 52
            $context["link_attributes"] = twig_array_merge(((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 52), "link_attr", [], "any", true, true, false, 52)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 52), "link_attr", [], "any", false, false, false, 52), [])) : ([])), ((twig_get_attribute($this->env, $this->source, ($context["options"] ?? null), "link_attr", [], "any", true, true, false, 52)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["options"] ?? null), "link_attr", [], "any", false, false, false, 52), [])) : ([])));
            echo "
    <figure";
            // line 53
            echo twig_call_macro($macros["_self"], "macro_html_attributes", [($context["figure_attributes"] ?? null)], 53, $context, $this->getSourceContext());
            echo ">
        ";
            // line 54
            if (twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "linkHref", [], "any", false, false, false, 54)) {
                // line 55
                $context["base_attributes"] = twig_array_merge(["href" => twig_get_attribute($this->env, $this->source,                 // line 56
($context["figure"] ?? null), "linkHref", [], "any", false, false, false, 56), "title" => (((twig_get_attribute($this->env, $this->source,                 // line 57
($context["figure"] ?? null), "hasLightbox", [], "any", false, false, false, 57) && twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "hasMetadata", [], "any", false, false, false, 57))) ? (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "metadata", [], "any", false, false, false, 57), "title", [], "any", false, false, false, 57)) : (null))], twig_get_attribute($this->env, $this->source,                 // line 58
($context["figure"] ?? null), "linkAttributes", [], "any", false, false, false, 58));
                // line 59
                echo "<a";
                echo twig_call_macro($macros["_self"], "macro_html_attributes", [twig_array_merge(($context["base_attributes"] ?? null), ($context["link_attributes"] ?? null))], 59, $context, $this->getSourceContext());
                echo ">
";
                // line 60
                echo twig_call_macro($macros["_self"], "macro_picture", [($context["figure"] ?? null), ($context["options"] ?? null)], 60, $context, $this->getSourceContext());
                echo "
            </a>";
            } else {
                // line 63
                echo twig_call_macro($macros["_self"], "macro_picture", [($context["figure"] ?? null), ($context["options"] ?? null)], 63, $context, $this->getSourceContext());
            }
            // line 65
            echo "        ";
            echo twig_call_macro($macros["_self"], "macro_caption", [($context["figure"] ?? null), ($context["options"] ?? null)], 65, $context, $this->getSourceContext());
            echo "
    </figure>
    ";
            // line 67
            if (($context["addSchemaOrg"] ?? null)) {
                // line 68
                $this->env->getRuntime('Contao\CoreBundle\Twig\Runtime\SchemaOrgRuntime')->add(twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "schemaOrgData", [], "any", false, false, false, 68));
            }

            return ('' === $tmp = ob_get_contents()) ? '' : new Markup($tmp, $this->env->getCharset());
        } finally {
            ob_end_clean();
        }
    }

    // line 77
    public function macro_picture($__figure__ = null, $__options__ = [], ...$__varargs__)
    {
        $macros = $this->macros;
        $context = $this->env->mergeGlobals([
            "figure" => $__figure__,
            "options" => $__options__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 78
            $context["picture_attributes"] = twig_array_merge(((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 78), "picture_attr", [], "any", true, true, false, 78)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 78), "picture_attr", [], "any", false, false, false, 78), [])) : ([])), ((twig_get_attribute($this->env, $this->source, ($context["options"] ?? null), "picture_attr", [], "any", true, true, false, 78)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["options"] ?? null), "picture_attr", [], "any", false, false, false, 78), [])) : ([])));
            // line 79
            $context["source_attributes"] = twig_array_merge(((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 79), "source_attr", [], "any", true, true, false, 79)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 79), "source_attr", [], "any", false, false, false, 79), [])) : ([])), ((twig_get_attribute($this->env, $this->source, ($context["options"] ?? null), "source_attr", [], "any", true, true, false, 79)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["options"] ?? null), "source_attr", [], "any", false, false, false, 79), [])) : ([])));
            // line 81
            if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "image", [], "any", false, false, false, 81), "sources", [], "any", false, false, false, 81)) {
                // line 82
                echo "<picture";
                echo twig_call_macro($macros["_self"], "macro_html_attributes", [($context["picture_attributes"] ?? null)], 82, $context, $this->getSourceContext());
                echo ">
            ";
                // line 83
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "image", [], "any", false, false, false, 83), "sources", [], "any", false, false, false, 83));
                foreach ($context['_seq'] as $context["_key"] => $context["source"]) {
                    // line 84
                    $context["defineProportions"] = (((twig_get_attribute($this->env, $this->source, $context["source"], "width", [], "any", true, true, false, 84)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, $context["source"], "width", [], "any", false, false, false, 84), false)) : (false)) && ((twig_get_attribute($this->env, $this->source, $context["source"], "height", [], "any", true, true, false, 84)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, $context["source"], "height", [], "any", false, false, false, 84), false)) : (false)));
                    // line 85
                    $context["base_attributes"] = ["srcset" => twig_get_attribute($this->env, $this->source,                     // line 86
$context["source"], "srcset", [], "any", false, false, false, 86), "sizes" => ((twig_get_attribute($this->env, $this->source,                     // line 87
$context["source"], "sizes", [], "any", true, true, false, 87)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, $context["source"], "sizes", [], "any", false, false, false, 87), null)) : (null)), "media" => ((twig_get_attribute($this->env, $this->source,                     // line 88
$context["source"], "media", [], "any", true, true, false, 88)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, $context["source"], "media", [], "any", false, false, false, 88), null)) : (null)), "type" => ((twig_get_attribute($this->env, $this->source,                     // line 89
$context["source"], "type", [], "any", true, true, false, 89)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, $context["source"], "type", [], "any", false, false, false, 89), null)) : (null)), "width" => ((                    // line 90
($context["defineProportions"] ?? null)) ? (twig_get_attribute($this->env, $this->source, $context["source"], "width", [], "any", false, false, false, 90)) : (null)), "height" => ((                    // line 91
($context["defineProportions"] ?? null)) ? (twig_get_attribute($this->env, $this->source, $context["source"], "height", [], "any", false, false, false, 91)) : (null))];
                    // line 93
                    echo "<source";
                    echo twig_call_macro($macros["_self"], "macro_html_attributes", [twig_array_merge(($context["base_attributes"] ?? null), ($context["source_attributes"] ?? null))], 93, $context, $this->getSourceContext());
                    echo ">";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['source'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 95
                echo "
            ";
                // line 96
                echo twig_call_macro($macros["_self"], "macro_img", [($context["figure"] ?? null), ($context["options"] ?? null)], 96, $context, $this->getSourceContext());
                echo "
        </picture>";
            } else {
                // line 99
                echo "        ";
                echo twig_call_macro($macros["_self"], "macro_img", [($context["figure"] ?? null), ($context["options"] ?? null)], 99, $context, $this->getSourceContext());
            }

            return ('' === $tmp = ob_get_contents()) ? '' : new Markup($tmp, $this->env->getCharset());
        } finally {
            ob_end_clean();
        }
    }

    // line 106
    public function macro_img($__figure__ = null, $__options__ = [], ...$__varargs__)
    {
        $macros = $this->macros;
        $context = $this->env->mergeGlobals([
            "figure" => $__figure__,
            "options" => $__options__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 107
            ob_start(function () { return ''; });
            // line 108
            echo "        ";
            $context["img_attributes"] = twig_array_merge(((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 108), "img_attr", [], "any", true, true, false, 108)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 108), "img_attr", [], "any", false, false, false, 108), [])) : ([])), ((twig_get_attribute($this->env, $this->source, ($context["options"] ?? null), "img_attr", [], "any", true, true, false, 108)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["options"] ?? null), "img_attr", [], "any", false, false, false, 108), [])) : ([])));
            // line 109
            echo "
        ";
            // line 110
            $context["img"] = twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "image", [], "any", false, false, false, 110), "img", [], "any", false, false, false, 110);
            // line 111
            echo "        ";
            $context["defineProportions"] = (((twig_get_attribute($this->env, $this->source, ($context["img"] ?? null), "width", [], "any", true, true, false, 111)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["img"] ?? null), "width", [], "any", false, false, false, 111), false)) : (false)) && ((twig_get_attribute($this->env, $this->source, ($context["img"] ?? null), "height", [], "any", true, true, false, 111)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["img"] ?? null), "height", [], "any", false, false, false, 111), false)) : (false)));
            // line 112
            echo "
        ";
            // line 113
            $context["base_attributes"] = ["src" => twig_get_attribute($this->env, $this->source,             // line 114
($context["img"] ?? null), "src", [], "any", false, false, false, 114), "alt" => ((twig_get_attribute($this->env, $this->source,             // line 115
($context["figure"] ?? null), "hasMetadata", [], "any", false, false, false, 115)) ? (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "metadata", [], "any", false, false, false, 115), "alt", [], "any", false, false, false, 115)) : ("")), "title" => ((twig_get_attribute($this->env, $this->source,             // line 116
($context["figure"] ?? null), "hasMetadata", [], "any", false, false, false, 116)) ? (((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "metadata", [], "any", false, false, false, 116), "title", [], "any", false, false, false, 116)) ? (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "metadata", [], "any", false, false, false, 116), "title", [], "any", false, false, false, 116)) : (null))) : (null)), "srcset" => (((twig_get_attribute($this->env, $this->source,             // line 117
($context["img"] ?? null), "srcset", [], "any", true, true, false, 117) && (twig_get_attribute($this->env, $this->source, ($context["img"] ?? null), "srcset", [], "any", false, false, false, 117) != twig_get_attribute($this->env, $this->source, ($context["img"] ?? null), "src", [], "any", false, false, false, 117)))) ? (twig_get_attribute($this->env, $this->source, ($context["img"] ?? null), "srcset", [], "any", false, false, false, 117)) : (null)), "sizes" => ((twig_get_attribute($this->env, $this->source,             // line 118
($context["img"] ?? null), "sizes", [], "any", true, true, false, 118)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["img"] ?? null), "sizes", [], "any", false, false, false, 118), null)) : (null)), "width" => ((            // line 119
($context["defineProportions"] ?? null)) ? (twig_get_attribute($this->env, $this->source, ($context["img"] ?? null), "width", [], "any", false, false, false, 119)) : (null)), "height" => ((            // line 120
($context["defineProportions"] ?? null)) ? (twig_get_attribute($this->env, $this->source, ($context["img"] ?? null), "height", [], "any", false, false, false, 120)) : (null)), "loading" => ((twig_get_attribute($this->env, $this->source,             // line 121
($context["img"] ?? null), "loading", [], "any", true, true, false, 121)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["img"] ?? null), "loading", [], "any", false, false, false, 121), null)) : (null)), "class" => ((twig_get_attribute($this->env, $this->source,             // line 122
($context["img"] ?? null), "class", [], "any", true, true, false, 122)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["img"] ?? null), "class", [], "any", false, false, false, 122), null)) : (null))];
            // line 124
            echo "        <img";
            echo twig_call_macro($macros["_self"], "macro_html_attributes", [twig_array_merge(($context["base_attributes"] ?? null), ($context["img_attributes"] ?? null))], 124, $context, $this->getSourceContext());
            echo ">
    ";
            $___internal_parse_0_ = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 107
            echo twig_spaceless($___internal_parse_0_);

            return ('' === $tmp = ob_get_contents()) ? '' : new Markup($tmp, $this->env->getCharset());
        } finally {
            ob_end_clean();
        }
    }

    // line 133
    public function macro_caption($__figure__ = null, $__options__ = [], ...$__varargs__)
    {
        $macros = $this->macros;
        $context = $this->env->mergeGlobals([
            "figure" => $__figure__,
            "options" => $__options__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 134
            ob_start(function () { return ''; });
            // line 135
            echo "        ";
            if ((twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "hasMetadata", [], "any", false, false, false, 135) && twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "metadata", [], "any", false, false, false, 135), "caption", [], "any", false, false, false, 135))) {
                // line 136
                echo "            ";
                $context["caption_attributes"] = twig_array_merge(((twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 136), "caption_attr", [], "any", true, true, false, 136)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "options", [], "any", false, true, false, 136), "caption_attr", [], "any", false, false, false, 136), [])) : ([])), ((twig_get_attribute($this->env, $this->source, ($context["options"] ?? null), "caption_attr", [], "any", true, true, false, 136)) ? (_twig_default_filter(twig_get_attribute($this->env, $this->source, ($context["options"] ?? null), "caption_attr", [], "any", false, false, false, 136), [])) : ([])));
                // line 137
                echo "            <figcaption";
                echo twig_call_macro($macros["_self"], "macro_html_attributes", [($context["caption_attributes"] ?? null)], 137, $context, $this->getSourceContext());
                echo ">";
                // line 138
                echo twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["figure"] ?? null), "metadata", [], "any", false, false, false, 138), "caption", [], "any", false, false, false, 138);
                // line 139
                echo "</figcaption>
        ";
            }
            // line 141
            echo "    ";
            $___internal_parse_1_ = ('' === $tmp = ob_get_clean()) ? '' : new Markup($tmp, $this->env->getCharset());
            // line 134
            echo twig_spaceless($___internal_parse_1_);

            return ('' === $tmp = ob_get_contents()) ? '' : new Markup($tmp, $this->env->getCharset());
        } finally {
            ob_end_clean();
        }
    }

    // line 154
    public function macro_html_attributes($__attributes__ = null, ...$__varargs__)
    {
        $macros = $this->macros;
        $context = $this->env->mergeGlobals([
            "attributes" => $__attributes__,
            "varargs" => $__varargs__,
        ]);

        $blocks = [];

        ob_start(function () { return ''; });
        try {
            // line 155
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_array_filter($this->env, ($context["attributes"] ?? null), function ($__v__) use ($context, $macros) { $context["v"] = $__v__; return  !(null === ($context["v"] ?? null)); }));
            foreach ($context['_seq'] as $context["attr"] => $context["value"]) {
                // line 156
                echo $this->env->getFilter('escape')->getCallable()($this->env, (" " . $context["attr"]), "contao_html", null, true);
                if ($context["value"]) {
                    echo "=\"";
                    echo $this->env->getFilter('escape')->getCallable()($this->env, $context["value"], "contao_html", null, true);
                    echo "\"";
                }
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['attr'], $context['value'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;

            return ('' === $tmp = ob_get_contents()) ? '' : new Markup($tmp, $this->env->getCharset());
        } finally {
            ob_end_clean();
        }
    }

    public function getTemplateName()
    {
        return "@ContaoCore/Image/Studio/_macros.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  296 => 156,  292 => 155,  279 => 154,  270 => 134,  267 => 141,  263 => 139,  261 => 138,  257 => 137,  254 => 136,  251 => 135,  249 => 134,  235 => 133,  226 => 107,  220 => 124,  218 => 122,  217 => 121,  216 => 120,  215 => 119,  214 => 118,  213 => 117,  212 => 116,  211 => 115,  210 => 114,  209 => 113,  206 => 112,  203 => 111,  201 => 110,  198 => 109,  195 => 108,  193 => 107,  179 => 106,  168 => 99,  163 => 96,  160 => 95,  152 => 93,  150 => 91,  149 => 90,  148 => 89,  147 => 88,  146 => 87,  145 => 86,  144 => 85,  142 => 84,  138 => 83,  133 => 82,  131 => 81,  129 => 79,  127 => 78,  113 => 77,  103 => 68,  101 => 67,  95 => 65,  92 => 63,  87 => 60,  82 => 59,  80 => 58,  79 => 57,  78 => 56,  77 => 55,  75 => 54,  71 => 53,  67 => 52,  65 => 51,  50 => 50,  45 => 102,  41 => 42,  38 => 2,);
    }

    public function getSourceContext()
    {
        return new Source("", "@ContaoCore/Image/Studio/_macros.html.twig", "/shared/httpd/isotope/isotopeDemo/vendor/contao/core-bundle/src/Resources/views/Image/Studio/_macros.html.twig");
    }
}
