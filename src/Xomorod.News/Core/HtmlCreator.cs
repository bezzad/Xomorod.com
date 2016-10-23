using System;
using System.Collections.Generic;
using System.Linq;

namespace Xomorod.News.Core
{
    public static class HtmlCreator
    {
        public static string AddAttribute(this string attr, string value = null)
        {
            value = (value == null) ? "" : $"='{value}'";
            return $"{attr}{value}";
        }

        private static string GetAttributes(this string[] attributes)
        {
            string attributesinnerHtml = "";

            foreach (string attr in attributes)
            {
                attributesinnerHtml += $" {attr}";
            }

            return attributesinnerHtml;
        }

        private static string GetAttributes(this KeyValuePair<string, string>[] attributes)
        {
            return attributes.Select((attr) => attr.Key.AddAttribute(attr.Value)).ToArray().GetAttributes();
        }

        /// <summary>	
        /// Add a Tag to a html string
        /// </summary>
        public static string AddTag(this string body, string tag, string innerHtml = null, params KeyValuePair<string, string>[] attributes)
        {
            return body.AddTag(tag, innerHtml, attributes.GetAttributes());
        }

        /// <summary>	
        /// Add a Tag to a html string
        /// </summary>
        public static string AddTag(this string body, string tag, string innerHtml = null, params string[] attributes)
        {
            if (innerHtml == null)
                body += $@"<{tag}{attributes.GetAttributes()} />";
            else
                body += $@"<{tag}{attributes.GetAttributes()}>{innerHtml}</{tag}>";

            return body;
        }

        /// <summary>	
        /// Goto new line
        /// </summary>
        public static string Enter(this string body)
        {
            body += Environment.NewLine;

            return body;
        }

        #region HTML Tags


        /// <summary>	
        /// Defines a comment <!-- your content -->
        /// </summary>
        public static string Comment(this string body, string content)
        {
            body += $@"<!-- {content} -->";
            return body;
        }


        /// <summary>	
        /// Defines the document type
        /// </summary>
        public static string DOCTYPE(this string body, params string[] attributes)
        {
            body += $@"<!DOCTYPE{attributes.GetAttributes()}>";

            return body;
        }

        /// <summary>	
        /// Defines a hyperlink
        /// </summary>
        public static string a(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("a", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an abbreviation or an acronym
        /// </summary>
        public static string abbr(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("abbr", innerHtml, attributes);
        }


        /// <summary>	
        /// Not supported in HTML5. Use <abbr> instead. Defines an acronym
        /// </summary>
        public static string acronym(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("acronym", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines contact information for the author owner of a document
        /// </summary>
        public static string address(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("address", innerHtml, attributes);
        }


        /// <summary>	
        /// Not supported in HTML5. Use <embed> or <object> instead. Defines an embedded applet
        /// </summary>
        public static string applet(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("applet", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an area inside an image-map
        /// </summary>
        public static string area(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("area", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an article
        /// </summary>
        public static string article(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("article", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines content aside from the page content
        /// </summary>
        public static string aside(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("aside", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines sound content
        /// </summary>
        public static string audio(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("audio", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines bold text
        /// </summary>
        public static string b(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("b", innerHtml, attributes);
        }


        /// <summary>	
        /// Specifies the base URL target for all relative URLs in a document
        /// </summary>
        public static string baseTag(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("base", innerHtml, attributes);
        }


        /// <summary>	
        /// Not supported in HTML5. Use CSS instead. Specifies a default color, size, and font for all text in a document
        /// </summary>
        public static string basefont(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("basefont", innerHtml, attributes);
        }


        /// <summary>	
        /// Isolates a part of text that might be formatted in a different direction from other text outside it
        /// </summary>
        public static string bdi(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("bdi", innerHtml, attributes);
        }


        /// <summary>	
        /// Overrides the current text direction
        /// </summary>
        public static string bdo(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("bdo", innerHtml, attributes);
        }


        /// <summary>	
        /// Not supported in HTML5. Use CSS instead. Defines big text
        /// </summary>
        public static string big(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("big", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a section that is quoted from another source
        /// </summary>
        public static string blockquote(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("blockquote", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines the document's body
        /// </summary>
        public static string body(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("body", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a single line break
        /// </summary>
        public static string br(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("br", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a clickable button
        /// </summary>
        public static string button(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("button", innerHtml, attributes);
        }


        /// <summary>	
        /// Used to draw graphics, on the fly, via scripting (usually JavaScript)
        /// </summary>
        public static string canvas(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("canvas", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a table caption
        /// </summary>
        public static string caption(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("caption", innerHtml, attributes);
        }


        /// <summary>	
        /// Not supported in HTML5. Use CSS instead. Defines centered text
        /// </summary>
        public static string center(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("center", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines the title of a work
        /// </summary>
        public static string cite(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("cite", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a piece of computer code
        /// </summary>
        public static string code(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("code", innerHtml, attributes);
        }


        /// <summary>	
        /// Specifies column properties for each column within a <colgroup> elementÿ
        /// </summary>
        public static string col(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("col", innerHtml, attributes);
        }


        /// <summary>	
        /// Specifies a group of one or more columns in a table for formatting
        /// </summary>
        public static string colgroup(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("colgroup", innerHtml, attributes);
        }


        /// <summary>	
        /// Specifies a list of pre-defined options for input controls
        /// </summary>
        public static string datalist(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("datalist", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a description value of a term in a description list
        /// </summary>
        public static string dd(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("dd", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines text that has been deleted from a document
        /// </summary>
        public static string del(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("del", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines additional details that the user can view or hide
        /// </summary>
        public static string details(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("details", innerHtml, attributes);
        }


        /// <summary>	
        /// Represents the defining instance of a term
        /// </summary>
        public static string dfn(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("dfn", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a dialog box or window
        /// </summary>
        public static string dialog(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("dialog", innerHtml, attributes);
        }


        /// <summary>	
        /// Not supported in HTML5. Use <ul> instead. Defines a directory list
        /// </summary>
        public static string dir(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("dir", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a section in a document
        /// </summary>
        public static string div(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("div", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a description list
        /// </summary>
        public static string dl(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("dl", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a term name in a description list
        /// </summary>
        public static string dt(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("dt", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines emphasized textÿ
        /// </summary>
        public static string em(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("em", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a container for an external (non-HTML) application
        /// </summary>
        public static string embed(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("embed", innerHtml, attributes);
        }


        /// <summary>	
        /// Groups related elements in a form
        /// </summary>
        public static string fieldset(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("fieldset", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a caption for a <figure> element
        /// </summary>
        public static string figcaption(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("figcaption", innerHtml, attributes);
        }


        /// <summary>	
        /// Specifies self-contained content
        /// </summary>
        public static string figure(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("figure", innerHtml, attributes);
        }


        /// <summary>	
        /// Not supported in HTML5. Use CSS instead. Defines font, color, and size for text .
        /// </summary>
        public static string font(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("font", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a footer for a document or section
        /// </summary>
        public static string footer(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("footer", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an HTML form for user input
        /// </summary>
        public static string form(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("form", innerHtml, attributes);
        }


        /// <summary>	
        /// Not supported in HTML5. Defines a window (a frame) in a frameset
        /// </summary>
        public static string frame(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("frame", innerHtml, attributes);
        }


        /// <summary>	
        /// Not supported in HTML5. Defines a set of frames
        /// </summary>
        public static string frameset(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("frameset", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines information about the document
        /// </summary>
        public static string head(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("head", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a header for a document or section
        /// </summary>
        public static string header(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("header", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a thematic change in the content
        /// </summary>
        public static string hr(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("hr", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines the root of an HTML document
        /// </summary>
        public static string html(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("html", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a part of text in an alternate voice or mood
        /// </summary>
        public static string i(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("i", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an inline frame
        /// </summary>
        public static string iframe(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("iframe", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an image
        /// </summary>
        public static string img(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("img", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an input control
        /// </summary>
        public static string input(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("input", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a text that has been inserted into a document
        /// </summary>
        public static string ins(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("ins", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines keyboard input
        /// </summary>
        public static string kbd(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("kbd", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a key-pair generator field (for forms)
        /// </summary>
        public static string keygen(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("keygen", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a labelÿfor an <input> element
        /// </summary>
        public static string label(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("label", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a caption for a <fieldset> element
        /// </summary>
        public static string legend(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("legend", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a list item
        /// </summary>
        public static string li(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("li", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines the relationship between a document and an external resource (most used to link to style sheets)
        /// </summary>
        public static string link(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("link", innerHtml, attributes);
        }


        /// <summary>	
        /// Specifies the main content of a document
        /// </summary>
        public static string main(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("main", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a client-side image-map
        /// </summary>
        public static string map(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("map", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines marked highlighted text
        /// </summary>
        public static string mark(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("mark", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a list menu of commands
        /// </summary>
        public static string menu(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("menu", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a command menu item that the user can invoke from a popup menu
        /// </summary>
        public static string menuitem(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("menuitem", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines metadata about an HTML document
        /// </summary>
        public static string meta(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("meta", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a scalar measurement within a known range (a gauge)
        /// </summary>
        public static string meter(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("meter", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines navigation links
        /// </summary>
        public static string nav(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("nav", innerHtml, attributes);
        }


        /// <summary>	
        /// Not supported in HTML5. Defines an alternate content for users that do not support frames
        /// </summary>
        public static string noframes(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("noframes", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an alternate content for users that do not support client-side scripts
        /// </summary>
        public static string noscript(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("noscript", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an embedded object
        /// </summary>
        public static string objectTag(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("object", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an ordered list
        /// </summary>
        public static string ol(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("ol", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a group of related options in a drop-down list
        /// </summary>
        public static string optgroup(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("optgroup", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an option in a drop-down list
        /// </summary>
        public static string option(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("option", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines the result of a calculation
        /// </summary>
        public static string output(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("output", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a paragraph
        /// </summary>
        public static string p(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("p", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a parameter for an object
        /// </summary>
        public static string param(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("param", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines preformatted text
        /// </summary>
        public static string pre(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("pre", innerHtml, attributes);
        }


        /// <summary>	
        /// Represents the progress of a task
        /// </summary>
        public static string progress(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("progress", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a short quotation
        /// </summary>
        public static string q(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("q", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines what to show in browsers that do not support ruby annotations
        /// </summary>
        public static string rp(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("rp", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an explanation pronunciation of characters (for East Asian typography)
        /// </summary>
        public static string rt(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("rt", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a ruby annotation (for East Asian typography)
        /// </summary>
        public static string ruby(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("ruby", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines text that is no longer correct
        /// </summary>
        public static string s(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("s", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines sample output from a computer program
        /// </summary>
        public static string samp(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("samp", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a client-side script
        /// </summary>
        public static string script(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("script", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a section in a document
        /// </summary>
        public static string section(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("section", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a drop-down list
        /// </summary>
        public static string select(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("select", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines smaller text
        /// </summary>
        public static string small(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("small", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines multiple media resources for media elements (<video> and <audio>)
        /// </summary>
        public static string source(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("source", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a section in a document
        /// </summary>
        public static string span(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("span", innerHtml, attributes);
        }


        /// <summary>	
        /// Not supported in HTML5. Use <del> or <s> instead. Defines strikethrough text
        /// </summary>
        public static string strike(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("strike", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines important text
        /// </summary>
        public static string strong(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("strong", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines style information for a document
        /// </summary>
        public static string style(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("style", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines subscripted text
        /// </summary>
        public static string sub(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("sub", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a visible heading for a <details> element
        /// </summary>
        public static string summary(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("summary", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines superscripted text
        /// </summary>
        public static string sup(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("sup", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a table
        /// </summary>
        public static string table(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("table", innerHtml, attributes);
        }


        /// <summary>	
        /// Groups the body content in a table
        /// </summary>
        public static string tbody(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("tbody", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a cell in a table
        /// </summary>
        public static string td(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("td", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a multiline input control (text area)
        /// </summary>
        public static string textarea(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("textarea", innerHtml, attributes);
        }


        /// <summary>	
        /// Groups the footer content in a table
        /// </summary>
        public static string tfoot(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("tfoot", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a header cell in a table
        /// </summary>
        public static string th(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("th", innerHtml, attributes);
        }


        /// <summary>	
        /// Groups the header content in a table
        /// </summary>
        public static string thead(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("thead", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a date time
        /// </summary>
        public static string time(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("time", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a title for the document
        /// </summary>
        public static string title(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("title", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a row in a table
        /// </summary>
        public static string tr(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("tr", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines text tracks for media elements (<video> and <audio>)
        /// </summary>
        public static string track(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("track", innerHtml, attributes);
        }


        /// <summary>	
        /// Not supported in HTML5. Use CSS instead. Defines teletype text
        /// </summary>
        public static string tt(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("tt", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines text that should be stylistically different from normal text
        /// </summary>
        public static string u(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("u", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines an unordered list
        /// </summary>
        public static string ul(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("ul", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a variable
        /// </summary>
        public static string var(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("var", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines a video or movie
        /// </summary>
        public static string video(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("video", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines HTML headings
        /// </summary>
        public static string h1(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("h1", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines HTML headings
        /// </summary>
        public static string h2(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("h2", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines HTML headings
        /// </summary>
        public static string h3(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("h3", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines HTML headings
        /// </summary>
        public static string h4(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("h4", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines HTML headings
        /// </summary>
        public static string h5(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("h5", innerHtml, attributes);
        }


        /// <summary>	
        /// Defines HTML headings
        /// </summary>
        public static string h6(this string body, string innerHtml = null, params string[] attributes)
        {
            return body.AddTag("h6", innerHtml, attributes);
        }

        #endregion

    }


}
