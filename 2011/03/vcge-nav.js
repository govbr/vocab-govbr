var cancelHashChange = false;
function updateHash() {
    if (cancelHashChange) { cancelHashChange = false; return; }
    $.jstree._focused().select_node(window.location.hash.substr(1));
    $(window.location.hash + ' a:first').trigger('click', false);
}

function showDiv(e, data){
    var termoAutorizado = $(data.rslt.obj[0]).children("a:first").text().trim();
    var nomeRecurso = $(data.rslt.obj[0]).attr("id");
    var uri = "http://vocab.e.gov.br/2011/03/vcge#" + nomeRecurso;
    $("#tabs").css('visibility', 'visible');
    // informacoes
    $(".termo_autorizado").text(termoAutorizado);
    document.getElementById("URI").value = uri;
    if (nomeRecurso == "esquema") {
        $("#termo-geral").hide();
    } else {
        $("#termo-geral").show();
        var parent = $(data.rslt.obj[0]).parents()[1];
        var TG = $(parent).children("a:first").text().trim();
        var TG_hash = $(parent).attr("id");
        $(".termo_geral").html('<a href="#'+ TG_hash +'">' + TG + '</a>');
        $(".termo_geral a:first").click(updateHash);
    }
    var children = $(data.rslt.obj[0]).children("ul").children();
    if (children.length > 0) {
        $("#termos-especificos").show();
        var TE;
        var TE_hash;
        var lista = $("ul.termos_especificos");
        lista.html("");
        $(children).each(function(i, child) {
            TE = $(child).children("a:first").text().trim();
            TE_hash = $(child).attr("id");
            lista.append('<li><a href="#' + TE_hash + '">' + TE + '</a></li>');
            lista.filter("a:last").click(updateHash);
        });
    } else {
        $("#termos-especificos").hide();
    }
    // exemplos
    $(".uri_assunto").text(uri);
    // sugestoes
    $("#nomeRecurso").text(nomeRecurso);
    $.history.load(nomeRecurso);
}

// $(document).ready();
$(function () {
    // Tabs
    $('#tabs').tabs();

    // Arvore
    $("#treeVCGE").jstree({
	    "json_data" : {
		    "ajax" : {
			    "url" : "vcge-treeview.json",
			    "data" : function (n) { 
				    return { id : n.attr ? n.attr("id") : 0 }; 
			    }
		    }
	    },
	    "themes" : {
		    "url" : "themes/apple/style.css",
		    "theme" : "apple",
		    "dots" : true,
		    "icons" : true
	    },
	    "plugins" : [ "themes", "json_data","ui" ]
    //}).bind("select_node.jstree", function (e, data) { alert("OIIII"); });
    }).bind("select_node.jstree", showDiv
    ).bind("loaded.jstree", function (event, data) {
        // when loaded sets initial state based off of priority hash first OR url
        if (window.location.hash) { // if hash defined then set tree state
            $.jstree._focused().select_node(window.location.hash);
            $(window.location.hash + ' a:first').trigger('click');
        } else { // otherwise base state off of URL
            $.jstree._focused().select_node("#esquema");
            $('#esquema a:first').trigger('click');
        }
    });

    // browser history
    function loadContent(hash) {
        if(hash != "") {

        } else  {

        }
    }

    window.onhashchange = updateHash;

    $.history.init(loadContent);
    $('#navigation a').not('.external-link').click(function(e) {
            var url = $(this).attr('href');
            url = url.replace(/^.*#/, '');
            $.history.load(url);
            return false;
    });

}); // $(document).ready();


$(function() {
    $( "#accordion" ).accordion();
});

// syntax highlighter
$(function() {
    $( "#exemplo_html_rdfa" ).snippet("html", {style: "acid", box: "4"});
    $( "#exemplo_html_rdfa_lite" ).snippet("html", {style: "acid", box: "4"});
    $( "#exemplo_html_microdata" ).snippet("html", {style: "acid", box: "4"});
    $( "#exemplo_rdf_turtle" ).snippet("turtle", {style: "acid", box:"5-6"});
    $( "#exemplo_rdf_xml" ).snippet("xml", {style: "acid", box:"4-5"});
});
