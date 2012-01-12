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
        var parents = []
        var clones = $("li[id='" + nomeRecurso + "']");
        clones.each(function(i, clone){
            parents[i] = $(clone).parents()[1];
        });
        var TG;
        var TG_hash;
        var lista = $(".termo_geral");
        lista.html("");
        $(parents).each(function(i, parent){
            TG = $(parent).children("a:first").text().trim();
            TG_hash = $(parent).attr("id");
            lista.append('<li><a href="#'+ TG_hash +'">' + TG + '</a></li>');
            lista.filter("a:last").click(updateHash);
            if (clones.length > 1) {
                var ANC;
                var ancestors = $(parent).parents("li[class^=jstree]");
                ancestors.splice(ancestors.length-1,1);
                var bloco = lista.children("li:last");
                if (ancestors.length > 0) {
                    bloco.append(' (');
                    $(ancestors).each(function(i, ancestor) {
                        if (i > 0) {
                            bloco.append(" ");
                        }
                        ANC = $(ancestor).children("a:first").text().trim();
                        bloco.append('&larr; <span class="ancestral">' + ANC + '</span>');
                    });
                    bloco.append(")");
                }
            }
        });
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
    $(".nomeRecurso").text(nomeRecurso);
    $.history.load(nomeRecurso);
}

function highLightHash(event, data) {
        // when loaded sets initial state based off of priority hash first OR url
        if (window.location.hash) { // if hash defined then set tree state
            $.jstree._focused().select_node(window.location.hash);
            $(window.location.hash + ' a:first').trigger('click');
        } else { // otherwise base state off of URL
            $.jstree._focused().select_node("#esquema");
            $('#esquema a:first').trigger('click');
        }
}

function highLight(event, data) {
        $("#busca_span").text("Encontrado " + data.rslt.nodes.length + " nós com o texto '" + data.rslt.str + "'.");
	highLightHash(event,data);
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
	    "plugins" : [ "themes", "json_data","ui", "search" ]
    }).bind("select_node.jstree", showDiv
    ).bind("loaded.jstree", highLightHash
    ).bind("search.jstree", highLight);



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

// Busca na árvore do VCGE
function busca() {
	$("#treeVCGE").jstree("search", $("#buscaTXT").val());
	//return false;
}


$(function() {
    $( "#accordion" ).accordion();
});

// syntax highlighter
$(function() {
    $( "#exemplo_html_rdfa" ).snippet("html", {style: "acid", box: "5"});
    $( "#exemplo_html_rdfa_lite" ).snippet("html", {style: "acid", box: "5"});
    $( "#exemplo_html_microdata" ).snippet("html", {style: "acid", box: "5"});
    $( "#exemplo_rdf_turtle" ).snippet("turtle", {style: "acid", box:"5-6"});
    $( "#exemplo_rdf_xml" ).snippet("xml", {style: "acid", box:"4-5"});
    $( "#exemplo_sql" ).snippet("sql", {style: "acid", box:"5"});
});
