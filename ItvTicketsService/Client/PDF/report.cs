﻿using iText.Kernel.Colors;
using iText.Kernel.Pdf;
using iText.Kernel.Pdf.Action;
using iText.Kernel.Pdf.Canvas.Draw;
using iText.Layout;
using iText.Layout.Element;
using iText.Layout.Properties;
using Microsoft.JSInterop;
using System;
using System.IO;

namespace Blazor_PDF.PDF
{
    public class Report
    {

        private int _pagenumber;

        public void Generate(IJSRuntime js, string filename = "report.pdf")
        {
            js.InvokeVoidAsync("jsSaveAsFile",
                                filename,
                                Convert.ToBase64String(CreatePdf())
                                );
        }

        public void OpenToIframe(IJSRuntime js, string idiFrame)
        {
            js.InvokeVoidAsync("jsOpenToIframe",
                                idiFrame,
                                Convert.ToBase64String(CreatePdf())
                                );
        }
        public void OpenNewTab(IJSRuntime js, string filename = "report.pdf")
        {
            js.InvokeVoidAsync("jsOpenIntoNewTab",
                                filename,
                                Convert.ToBase64String(CreatePdf())
                                );
        }

        public byte[] CreatePdf()
        {
            var stream = new MemoryStream();
            var writer = new PdfWriter(stream);
            var pdf = new PdfDocument(writer);
            Document document = new Document(pdf);

            // Header
            Paragraph header = new Paragraph("HEADER")
               .SetTextAlignment(TextAlignment.CENTER)
               .SetFontSize(20);

            // New line
            Paragraph newline = new Paragraph(new Text("\n"));

            document.Add(newline);
            document.Add(header);

            // Add sub-header
            Paragraph subheader = new Paragraph("SUB HEADER")
               .SetTextAlignment(TextAlignment.CENTER)
               .SetFontSize(15);
            document.Add(subheader);

            // Line separator
            LineSeparator ls = new LineSeparator(new SolidLine());
            document.Add(ls);

            // Add paragraph1
            Paragraph paragraph1 = new Paragraph("Lorem ipsum " +
               "dolor sit amet, consectetur adipiscing elit, " +
               "sed do eiusmod tempor incididunt ut labore " +
               "et dolore magna aliqua.");
            document.Add(paragraph1);

            // Add image
            //Image img = new Image(ImageDataFactory
            //   .Create(@"..\..\image.jpg"))
            //   .SetTextAlignment(TextAlignment.CENTER);
            //document.Add(img);

            // Table
            Table table = new Table(2, false);
            Cell cell11 = new Cell(1, 1)
               .SetBackgroundColor(ColorConstants.GRAY)
               .SetTextAlignment(TextAlignment.CENTER)
               .Add(new Paragraph("State"));
            Cell cell12 = new Cell(1, 1)
               .SetBackgroundColor(ColorConstants.GRAY)
               .SetTextAlignment(TextAlignment.CENTER)
               .Add(new Paragraph("Capital"));

            Cell cell21 = new Cell(1, 1)
               .SetTextAlignment(TextAlignment.CENTER)
               .Add(new Paragraph("New York"));
            Cell cell22 = new Cell(1, 1)
               .SetTextAlignment(TextAlignment.CENTER)
               .Add(new Paragraph("Albany"));

            Cell cell31 = new Cell(1, 1)
               .SetTextAlignment(TextAlignment.CENTER)
               .Add(new Paragraph("New Jersey"));
            Cell cell32 = new Cell(1, 1)
               .SetTextAlignment(TextAlignment.CENTER)
               .Add(new Paragraph("Trenton"));

            Cell cell41 = new Cell(1, 1)
               .SetTextAlignment(TextAlignment.CENTER)
               .Add(new Paragraph("California"));
            Cell cell42 = new Cell(1, 1)
               .SetTextAlignment(TextAlignment.CENTER)
               .Add(new Paragraph("Sacramento"));

            table.AddCell(cell11);
            table.AddCell(cell12);
            table.AddCell(cell21);
            table.AddCell(cell22);
            table.AddCell(cell31);
            table.AddCell(cell32);
            table.AddCell(cell41);
            table.AddCell(cell42);

            document.Add(newline);
            document.Add(table);

            // Hyper link
            Link link = new Link("click here",
               PdfAction.CreateURI("https://www.google.com"));
            Paragraph hyperLink = new Paragraph("Please ")
               .Add(link.SetBold().SetUnderline()
               .SetItalic().SetFontColor(ColorConstants.BLUE))
               .Add(" to go www.google.com.");

            document.Add(newline);
            document.Add(hyperLink);

            // Page numbers
            int n = pdf.GetNumberOfPages();
            for (int i = 1; i <= n; i++)
            {
                document.ShowTextAligned(new Paragraph(String
                   .Format("page" + i + " of " + n)),
                   559, 806, i, TextAlignment.RIGHT,
                   VerticalAlignment.TOP, 0);
            }

            // Close document
            document.Close();

            return stream.ToArray();
        }
    }
}
