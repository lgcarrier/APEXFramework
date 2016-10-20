/**
 * @namespace afw.afw_21.actio_dynmq.menu_redrc
 */
afw.afw_21.actio_dynmq.menu_redrc = {
    vva_plugn_ajax: "",
    redrc: function (pnu_seqnc_item, pva_url) {
        if (pva_url != "") {
            afw.jQuery.exec_aplic_procs({
                plugn_ajax: afw.afw_21.actio_dynmq.menu_redrc.vva_plugn_ajax,
                widget_action: "DEFNR_ITEM_ACTIF",
                procs_retrn_data_type: "text",
                x01: pnu_seqnc_item,
                sucs_procs: function () {
                    redirect(pva_url);
                }
            });
        }
    }
};