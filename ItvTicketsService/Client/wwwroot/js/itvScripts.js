

function Print() {
    window.print();
}

function ShowItvAlert(msg) {
    alert(msg);
}

function PrintHtml(html, title) {

    import { jsPDF } from "./jspdf";
    const doc = new jsPDF();
    doc.text("Hello world!", 10, 10);
    doc.save("a4.pdf");

    /*
    //let mywindow = window.open('', 'PRINT', 'height=650,width=900,top=100,left=150');
    let mywindow = window.open('', '', 'height=400,width=800');

    mywindow.document.write(`<html><head><title>${title}</title>`);
    mywindow.document.write('</head><body >');
    mywindow.document.write(html);
    mywindow.document.write('</body></html>');

    mywindow.document.close(); // necessary for IE >= 10
    //mywindow.focus(); // necessary for IE >= 10

    mywindow.print();
    mywindow.close();
    
    //return true;
    */
}
