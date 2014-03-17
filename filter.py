#!/usr/bin/env python
# -*- coding: utf-8 -*-
import alp

pen_dict = {'title': 'Send to PDFPen', 'subtitle': "Send current document to PDFPen's iCloud folder?", 'valid': True, 'arg': 'pdfpen', 'icon': 'pdfpen.png'}
expert_dict = {'title': 'Send to PDF Expert', 'subtitle': "Send current document to PDF Expert's iCloud folder?", 'valid': True, 'arg': 'pdfexpert', 'icon': 'pdfexpert.png'}
both_dict = {'title': 'Send to Both', 'subtitle': "Send current document to both PDFPen and PDF Expert's iCloud folders?", 'valid': True, 'arg': 'both', 'icon': 'icon.png'}

pen_item = alp.Item(**pen_dict)
expert_item = alp.Item(**expert_dict)
both_item = alp.Item(**both_dict)

res_list = [pen_item, expert_item, both_item]
alp.feedback(res_list)
 