// Copyright (c) 2022, H. Singh <hamsbrar@gmail.com>. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

export const constRadToNativeEventNameMappings = new Map<string, string>();

export const constRadToNativeAttributeNameMappings = new Map<string, string>();
export const constNativeToRadAttributeNameMappings = new Map<string, string>();

export const constLongTagToShortTagMappings = new Map<string, string>();
export const constShortTagToLongTagMappings = new Map<string, string>();

export const constNativeToRadTagMappings = new Map<string, string>();

constRadToNativeEventNameMappings.set('onClick', 'click');
constRadToNativeEventNameMappings.set('onDoubleClick', 'dblclick');
constRadToNativeEventNameMappings.set('onInput', 'input');
constRadToNativeEventNameMappings.set('onChange', 'change');
constRadToNativeEventNameMappings.set('onSubmit', 'submit');
constRadToNativeEventNameMappings.set('onKeyUp', 'keyup');
constRadToNativeEventNameMappings.set('onKeyDown', 'keydown');
constRadToNativeEventNameMappings.set('onKeyPress', 'keypress');
constRadToNativeEventNameMappings.set('onDrag', 'drag');
constRadToNativeEventNameMappings.set('onDragEnd', 'dragend');
constRadToNativeEventNameMappings.set('onDragEnter', 'dragenter');
constRadToNativeEventNameMappings.set('onDragLeave', 'dragleave');
constRadToNativeEventNameMappings.set('onDragOver', 'dragover');
constRadToNativeEventNameMappings.set('onDragStart', 'dragstart');
constRadToNativeEventNameMappings.set('onDrop', 'drop');
constRadToNativeEventNameMappings.set('onMouseDown', 'mousedown');
constRadToNativeEventNameMappings.set('onMouseEnter', 'mouseenter');
constRadToNativeEventNameMappings.set('onMouseLeave', 'mouseleave');
constRadToNativeEventNameMappings.set('onMouseMove', 'mousemove');
constRadToNativeEventNameMappings.set('onMouseOver', 'mouseover');
constRadToNativeEventNameMappings.set('onMouseOut', 'mouseout');
constRadToNativeEventNameMappings.set('onMouseUp', 'mouseup');

constRadToNativeAttributeNameMappings.set('abbr', 'abbr');
constRadToNativeAttributeNameMappings.set('accept', 'accept');
constRadToNativeAttributeNameMappings.set('acceptCharset', 'accept-charset');
constRadToNativeAttributeNameMappings.set('action', 'action');
constRadToNativeAttributeNameMappings.set('allow', 'allow');
constRadToNativeAttributeNameMappings.set('allowFullscreen', 'allowfullscreen');
constRadToNativeAttributeNameMappings.set('allowPaymentRequest', 'allowpaymentrequest');
constRadToNativeAttributeNameMappings.set('alt', 'alt');
constRadToNativeAttributeNameMappings.set('autoComplete', 'autocomplete');
constRadToNativeAttributeNameMappings.set('autoPlay', 'autoplay');
constRadToNativeAttributeNameMappings.set('capture', 'capture');
constRadToNativeAttributeNameMappings.set('charset', 'charset');
constRadToNativeAttributeNameMappings.set('checked', 'checked');
constRadToNativeAttributeNameMappings.set('cite', 'cite');
constRadToNativeAttributeNameMappings.set('className', 'class');
constRadToNativeAttributeNameMappings.set('cols', 'cols');
constRadToNativeAttributeNameMappings.set('colSpan', 'colspan');
constRadToNativeAttributeNameMappings.set('content', 'content');
constRadToNativeAttributeNameMappings.set('contentEditable', 'contentEditable');
constRadToNativeAttributeNameMappings.set('controls', 'controls');
constRadToNativeAttributeNameMappings.set('coords', 'coords');
constRadToNativeAttributeNameMappings.set('crossOrigin', 'crossorigin');
constRadToNativeAttributeNameMappings.set('dateTime', 'datetime');
constRadToNativeAttributeNameMappings.set('decoding', 'decoding');
constRadToNativeAttributeNameMappings.set('defaultAttribute', 'default');
constRadToNativeAttributeNameMappings.set('dir', 'dir');
constRadToNativeAttributeNameMappings.set('dirName', 'dirname');
constRadToNativeAttributeNameMappings.set('disabled', 'disabled');
constRadToNativeAttributeNameMappings.set('download', 'download');
constRadToNativeAttributeNameMappings.set('draggable', 'draggable');
constRadToNativeAttributeNameMappings.set('enctype', 'enctype');
constRadToNativeAttributeNameMappings.set('fetchPriority', 'fetchpriority');
constRadToNativeAttributeNameMappings.set('forAttribute', 'for');
constRadToNativeAttributeNameMappings.set('form', 'form');
constRadToNativeAttributeNameMappings.set('formAction', 'formaction');
constRadToNativeAttributeNameMappings.set('formEncType', 'formenctype');
constRadToNativeAttributeNameMappings.set('formMethod', 'formmethod');
constRadToNativeAttributeNameMappings.set('formNoValidate', 'formnovalidate');
constRadToNativeAttributeNameMappings.set('formTarget', 'formtarget');
constRadToNativeAttributeNameMappings.set('headers', 'headers');
constRadToNativeAttributeNameMappings.set('height', 'height');
constRadToNativeAttributeNameMappings.set('hidden', 'hidden');
constRadToNativeAttributeNameMappings.set('high', 'high');
constRadToNativeAttributeNameMappings.set('href', 'href');
constRadToNativeAttributeNameMappings.set('hrefLang', 'hreflang');
constRadToNativeAttributeNameMappings.set('httpEquiv', 'http-equiv');
constRadToNativeAttributeNameMappings.set('id', 'id');
constRadToNativeAttributeNameMappings.set('inputMode', 'inputmode');
constRadToNativeAttributeNameMappings.set('kind', 'kind');
constRadToNativeAttributeNameMappings.set('label', 'label');
constRadToNativeAttributeNameMappings.set('list', 'list');
constRadToNativeAttributeNameMappings.set('loading', 'loading');
constRadToNativeAttributeNameMappings.set('loop', 'loop');
constRadToNativeAttributeNameMappings.set('low', 'low');
constRadToNativeAttributeNameMappings.set('max', 'max');
constRadToNativeAttributeNameMappings.set('maxLength', 'maxlength');
constRadToNativeAttributeNameMappings.set('media', 'media');
constRadToNativeAttributeNameMappings.set('method', 'method');
constRadToNativeAttributeNameMappings.set('min', 'min');
constRadToNativeAttributeNameMappings.set('minLength', 'minlength');
constRadToNativeAttributeNameMappings.set('multiple', 'multiple');
constRadToNativeAttributeNameMappings.set('muted', 'muted');
constRadToNativeAttributeNameMappings.set('name', 'name');
constRadToNativeAttributeNameMappings.set('noValidate', 'novalidate');
constRadToNativeAttributeNameMappings.set('open', 'open');
constRadToNativeAttributeNameMappings.set('optimum', 'optimum');
constRadToNativeAttributeNameMappings.set('pattern', 'pattern');
constRadToNativeAttributeNameMappings.set('ping', 'ping');
constRadToNativeAttributeNameMappings.set('placeholder', 'placeholder');
constRadToNativeAttributeNameMappings.set('playsInline', 'playsinline');
constRadToNativeAttributeNameMappings.set('poster', 'poster');
constRadToNativeAttributeNameMappings.set('preload', 'preload');
constRadToNativeAttributeNameMappings.set('readOnly', 'readonly');
constRadToNativeAttributeNameMappings.set('referrerPolicy', 'referrerpolicy');
constRadToNativeAttributeNameMappings.set('rel', 'rel');
constRadToNativeAttributeNameMappings.set('required', 'required');
constRadToNativeAttributeNameMappings.set('reversed', 'reversed');
constRadToNativeAttributeNameMappings.set('rows', 'rows');
constRadToNativeAttributeNameMappings.set('rowSpan', 'rowspan');
constRadToNativeAttributeNameMappings.set('scope', 'scope');
constRadToNativeAttributeNameMappings.set('selected', 'selected');
constRadToNativeAttributeNameMappings.set('shape', 'shape');
constRadToNativeAttributeNameMappings.set('size', 'size');
constRadToNativeAttributeNameMappings.set('sizes', 'sizes');
constRadToNativeAttributeNameMappings.set('span', 'span');
constRadToNativeAttributeNameMappings.set('spellCheck', 'spellcheck');
constRadToNativeAttributeNameMappings.set('src', 'src');
constRadToNativeAttributeNameMappings.set('srcDoc', 'srcdoc');
constRadToNativeAttributeNameMappings.set('srcLang', 'srclang');
constRadToNativeAttributeNameMappings.set('srcSet', 'srcset');
constRadToNativeAttributeNameMappings.set('start', 'start');
constRadToNativeAttributeNameMappings.set('step', 'step');
constRadToNativeAttributeNameMappings.set('style', 'style');
constRadToNativeAttributeNameMappings.set('tabIndex', 'tabindex');
constRadToNativeAttributeNameMappings.set('target', 'target');
constRadToNativeAttributeNameMappings.set('title', 'title');
constRadToNativeAttributeNameMappings.set('type', 'type');
constRadToNativeAttributeNameMappings.set('value', 'value');
constRadToNativeAttributeNameMappings.set('width', 'width');
constRadToNativeAttributeNameMappings.set('wrap', 'wrap');

constNativeToRadAttributeNameMappings.set('abbr', 'abbr');
constNativeToRadAttributeNameMappings.set('accept', 'accept');
constNativeToRadAttributeNameMappings.set('accept-charset', 'acceptCharset');
constNativeToRadAttributeNameMappings.set('action', 'action');
constNativeToRadAttributeNameMappings.set('allow', 'allow');
constNativeToRadAttributeNameMappings.set('allowfullscreen', 'allowFullscreen');
constNativeToRadAttributeNameMappings.set('allowpaymentrequest', 'allowPaymentRequest');
constNativeToRadAttributeNameMappings.set('alt', 'alt');
constNativeToRadAttributeNameMappings.set('autocomplete', 'autoComplete');
constNativeToRadAttributeNameMappings.set('autoplay', 'autoPlay');
constNativeToRadAttributeNameMappings.set('capture', 'capture');
constNativeToRadAttributeNameMappings.set('charset', 'charset');
constNativeToRadAttributeNameMappings.set('checked', 'checked');
constNativeToRadAttributeNameMappings.set('cite', 'cite');
constNativeToRadAttributeNameMappings.set('class', 'className');
constNativeToRadAttributeNameMappings.set('cols', 'cols');
constNativeToRadAttributeNameMappings.set('colspan', 'colSpan');
constNativeToRadAttributeNameMappings.set('content', 'content');
constNativeToRadAttributeNameMappings.set('contentEditable', 'contentEditable');
constNativeToRadAttributeNameMappings.set('controls', 'controls');
constNativeToRadAttributeNameMappings.set('coords', 'coords');
constNativeToRadAttributeNameMappings.set('crossorigin', 'crossOrigin');
constNativeToRadAttributeNameMappings.set('datetime', 'dateTime');
constNativeToRadAttributeNameMappings.set('decoding', 'decoding');
constNativeToRadAttributeNameMappings.set('default', 'defaultAttribute');
constNativeToRadAttributeNameMappings.set('dir', 'dir');
constNativeToRadAttributeNameMappings.set('dirname', 'dirName');
constNativeToRadAttributeNameMappings.set('disabled', 'disabled');
constNativeToRadAttributeNameMappings.set('download', 'download');
constNativeToRadAttributeNameMappings.set('draggable', 'draggable');
constNativeToRadAttributeNameMappings.set('enctype', 'enctype');
constNativeToRadAttributeNameMappings.set('fetchpriority', 'fetchPriority');
constNativeToRadAttributeNameMappings.set('for', 'forAttribute');
constNativeToRadAttributeNameMappings.set('form', 'form');
constNativeToRadAttributeNameMappings.set('formaction', 'formAction');
constNativeToRadAttributeNameMappings.set('formenctype', 'formEncType');
constNativeToRadAttributeNameMappings.set('formmethod', 'formMethod');
constNativeToRadAttributeNameMappings.set('formnovalidate', 'formNoValidate');
constNativeToRadAttributeNameMappings.set('formtarget', 'formTarget');
constNativeToRadAttributeNameMappings.set('headers', 'headers');
constNativeToRadAttributeNameMappings.set('height', 'height');
constNativeToRadAttributeNameMappings.set('hidden', 'hidden');
constNativeToRadAttributeNameMappings.set('high', 'high');
constNativeToRadAttributeNameMappings.set('href', 'href');
constNativeToRadAttributeNameMappings.set('hreflang', 'hrefLang');
constNativeToRadAttributeNameMappings.set('http-equiv', 'httpEquiv');
constNativeToRadAttributeNameMappings.set('id', 'id');
constNativeToRadAttributeNameMappings.set('inputmode', 'inputMode');
constNativeToRadAttributeNameMappings.set('kind', 'kind');
constNativeToRadAttributeNameMappings.set('label', 'label');
constNativeToRadAttributeNameMappings.set('list', 'list');
constNativeToRadAttributeNameMappings.set('loading', 'loading');
constNativeToRadAttributeNameMappings.set('loop', 'loop');
constNativeToRadAttributeNameMappings.set('low', 'low');
constNativeToRadAttributeNameMappings.set('max', 'max');
constNativeToRadAttributeNameMappings.set('maxlength', 'maxLength');
constNativeToRadAttributeNameMappings.set('media', 'media');
constNativeToRadAttributeNameMappings.set('method', 'method');
constNativeToRadAttributeNameMappings.set('min', 'min');
constNativeToRadAttributeNameMappings.set('minlength', 'minLength');
constNativeToRadAttributeNameMappings.set('multiple', 'multiple');
constNativeToRadAttributeNameMappings.set('muted', 'muted');
constNativeToRadAttributeNameMappings.set('name', 'name');
constNativeToRadAttributeNameMappings.set('novalidate', 'noValidate');
constNativeToRadAttributeNameMappings.set('open', 'open');
constNativeToRadAttributeNameMappings.set('optimum', 'optimum');
constNativeToRadAttributeNameMappings.set('pattern', 'pattern');
constNativeToRadAttributeNameMappings.set('ping', 'ping');
constNativeToRadAttributeNameMappings.set('placeholder', 'placeholder');
constNativeToRadAttributeNameMappings.set('playsinline', 'playsInline');
constNativeToRadAttributeNameMappings.set('poster', 'poster');
constNativeToRadAttributeNameMappings.set('preload', 'preload');
constNativeToRadAttributeNameMappings.set('readonly', 'readOnly');
constNativeToRadAttributeNameMappings.set('referrerpolicy', 'referrerPolicy');
constNativeToRadAttributeNameMappings.set('rel', 'rel');
constNativeToRadAttributeNameMappings.set('required', 'required');
constNativeToRadAttributeNameMappings.set('reversed', 'reversed');
constNativeToRadAttributeNameMappings.set('rows', 'rows');
constNativeToRadAttributeNameMappings.set('rowspan', 'rowSpan');
constNativeToRadAttributeNameMappings.set('scope', 'scope');
constNativeToRadAttributeNameMappings.set('selected', 'selected');
constNativeToRadAttributeNameMappings.set('shape', 'shape');
constNativeToRadAttributeNameMappings.set('size', 'size');
constNativeToRadAttributeNameMappings.set('sizes', 'sizes');
constNativeToRadAttributeNameMappings.set('span', 'span');
constNativeToRadAttributeNameMappings.set('spellcheck', 'spellCheck');
constNativeToRadAttributeNameMappings.set('src', 'src');
constNativeToRadAttributeNameMappings.set('srcdoc', 'srcDoc');
constNativeToRadAttributeNameMappings.set('srclang', 'srcLang');
constNativeToRadAttributeNameMappings.set('srcset', 'srcSet');
constNativeToRadAttributeNameMappings.set('start', 'start');
constNativeToRadAttributeNameMappings.set('step', 'step');
constNativeToRadAttributeNameMappings.set('style', 'style');
constNativeToRadAttributeNameMappings.set('tabindex', 'tabIndex');
constNativeToRadAttributeNameMappings.set('target', 'target');
constNativeToRadAttributeNameMappings.set('title', 'title');
constNativeToRadAttributeNameMappings.set('type', 'type');
constNativeToRadAttributeNameMappings.set('value', 'value');
constNativeToRadAttributeNameMappings.set('width', 'width');
constNativeToRadAttributeNameMappings.set('wrap', 'wrap');

constLongTagToShortTagMappings.set('Anchor', 'a');
constLongTagToShortTagMappings.set('Abbreviation', 'abbr');
constLongTagToShortTagMappings.set('Address', 'address');
constLongTagToShortTagMappings.set('ImageMapArea', 'area');
constLongTagToShortTagMappings.set('Article', 'article');
constLongTagToShortTagMappings.set('Aside', 'aside');
constLongTagToShortTagMappings.set('Audio', 'audio');
constLongTagToShortTagMappings.set('BidirectionalIsolate', 'bdi');
constLongTagToShortTagMappings.set('BidirectionalTextOverride', 'bdo');
constLongTagToShortTagMappings.set('BlockQuote', 'blockquote');
constLongTagToShortTagMappings.set('LineBreak', 'br');
constLongTagToShortTagMappings.set('Button', 'button');
constLongTagToShortTagMappings.set('Canvas', 'canvas');
constLongTagToShortTagMappings.set('TableCaption', 'caption');
constLongTagToShortTagMappings.set('Citation', 'cite');
constLongTagToShortTagMappings.set('InlineCode', 'code');
constLongTagToShortTagMappings.set('TableColumn', 'col');
constLongTagToShortTagMappings.set('TableColumnGroup', 'colgroup');
constLongTagToShortTagMappings.set('Data', 'data');
constLongTagToShortTagMappings.set('DataList', 'datalist');
constLongTagToShortTagMappings.set('DescriptionDetails', 'dd');
constLongTagToShortTagMappings.set('DeletedText', 'del');
constLongTagToShortTagMappings.set('Details', 'details');
constLongTagToShortTagMappings.set('Definition', 'dfn');
constLongTagToShortTagMappings.set('Dialog', 'dialog');
constLongTagToShortTagMappings.set('Division', 'div');
constLongTagToShortTagMappings.set('DescriptionList', 'dl');
constLongTagToShortTagMappings.set('DescriptionTerm', 'dt');
constLongTagToShortTagMappings.set('Emphasis', 'em');
constLongTagToShortTagMappings.set('EmbedExternal', 'embed');
constLongTagToShortTagMappings.set('FieldSet', 'fieldset');
constLongTagToShortTagMappings.set('FigureCaption', 'figcaption');
constLongTagToShortTagMappings.set('Figure', 'figure');
constLongTagToShortTagMappings.set('Footer', 'footer');
constLongTagToShortTagMappings.set('Form', 'form');
constLongTagToShortTagMappings.set('Heading1', 'h1');
constLongTagToShortTagMappings.set('Heading2', 'h2');
constLongTagToShortTagMappings.set('Heading3', 'h3');
constLongTagToShortTagMappings.set('Heading4', 'h4');
constLongTagToShortTagMappings.set('Heading5', 'h5');
constLongTagToShortTagMappings.set('Heading6', 'h6');
constLongTagToShortTagMappings.set('Header', 'header');
constLongTagToShortTagMappings.set('HorizontalRule', 'hr');
constLongTagToShortTagMappings.set('Idiomatic', 'i');
constLongTagToShortTagMappings.set('IFrame', 'iframe');
constLongTagToShortTagMappings.set('Image', 'img');
constLongTagToShortTagMappings.set('Input', 'input');
constLongTagToShortTagMappings.set('InsertedText', 'ins');
constLongTagToShortTagMappings.set('KeyboardInput', 'kbd');
constLongTagToShortTagMappings.set('Label', 'label');
constLongTagToShortTagMappings.set('Legend', 'legend');
constLongTagToShortTagMappings.set('ListItem', 'li');
constLongTagToShortTagMappings.set('ImageMap', 'map');
constLongTagToShortTagMappings.set('MarkText', 'mark');
constLongTagToShortTagMappings.set('Menu', 'menu');
constLongTagToShortTagMappings.set('Meter', 'meter');
constLongTagToShortTagMappings.set('Navigation', 'nav');
constLongTagToShortTagMappings.set('OrderedList', 'ol');
constLongTagToShortTagMappings.set('OptionGroup', 'optgroup');
constLongTagToShortTagMappings.set('Option', 'option');
constLongTagToShortTagMappings.set('Output', 'output');
constLongTagToShortTagMappings.set('Paragraph', 'p');
constLongTagToShortTagMappings.set('Picture', 'picture');
constLongTagToShortTagMappings.set('Portal', 'portal');
constLongTagToShortTagMappings.set('PreformattedText', 'pre');
constLongTagToShortTagMappings.set('Progress', 'progress');
constLongTagToShortTagMappings.set('InlineQuotation', 'q');
constLongTagToShortTagMappings.set('RubyFallbackParenthesis', 'rp');
constLongTagToShortTagMappings.set('RubyText', 'rt');
constLongTagToShortTagMappings.set('RubyAnnotation', 'ruby');
constLongTagToShortTagMappings.set('StrikeThrough', 's');
constLongTagToShortTagMappings.set('SampleOutput', 'samp');
constLongTagToShortTagMappings.set('Section', 'section');
constLongTagToShortTagMappings.set('Select', 'select');
constLongTagToShortTagMappings.set('Small', 'small');
constLongTagToShortTagMappings.set('MediaSource', 'source');
constLongTagToShortTagMappings.set('Span', 'span');
constLongTagToShortTagMappings.set('Strong', 'strong');
constLongTagToShortTagMappings.set('SubScript', 'sub');
constLongTagToShortTagMappings.set('Summary', 'summary');
constLongTagToShortTagMappings.set('SuperScript', 'sup');
constLongTagToShortTagMappings.set('Table', 'table');
constLongTagToShortTagMappings.set('TableBody', 'tbody');
constLongTagToShortTagMappings.set('TableDataCell', 'td');
constLongTagToShortTagMappings.set('TextArea', 'textarea');
constLongTagToShortTagMappings.set('TableFoot', 'tfoot');
constLongTagToShortTagMappings.set('TableHeaderCell', 'th');
constLongTagToShortTagMappings.set('TableHead', 'thead');
constLongTagToShortTagMappings.set('Time', 'time');
constLongTagToShortTagMappings.set('TableRow', 'tr');
constLongTagToShortTagMappings.set('EmbedTextTrack', 'track');
constLongTagToShortTagMappings.set('UnOrderedList', 'ul');
constLongTagToShortTagMappings.set('Variable', 'vartag');
constLongTagToShortTagMappings.set('Video', 'video');
constLongTagToShortTagMappings.set('LineBreakOpportunity', 'wbr');

constShortTagToLongTagMappings.set('a', 'Anchor');
constShortTagToLongTagMappings.set('abbr', 'Abbreviation');
constShortTagToLongTagMappings.set('address', 'Address');
constShortTagToLongTagMappings.set('area', 'ImageMapArea');
constShortTagToLongTagMappings.set('article', 'Article');
constShortTagToLongTagMappings.set('aside', 'Aside');
constShortTagToLongTagMappings.set('audio', 'Audio');
constShortTagToLongTagMappings.set('bdi', 'BidirectionalIsolate');
constShortTagToLongTagMappings.set('bdo', 'BidirectionalTextOverride');
constShortTagToLongTagMappings.set('blockquote', 'BlockQuote');
constShortTagToLongTagMappings.set('br', 'LineBreak');
constShortTagToLongTagMappings.set('button', 'Button');
constShortTagToLongTagMappings.set('canvas', 'Canvas');
constShortTagToLongTagMappings.set('caption', 'TableCaption');
constShortTagToLongTagMappings.set('cite', 'Citation');
constShortTagToLongTagMappings.set('code', 'InlineCode');
constShortTagToLongTagMappings.set('col', 'TableColumn');
constShortTagToLongTagMappings.set('colgroup', 'TableColumnGroup');
constShortTagToLongTagMappings.set('data', 'Data');
constShortTagToLongTagMappings.set('datalist', 'DataList');
constShortTagToLongTagMappings.set('dd', 'DescriptionDetails');
constShortTagToLongTagMappings.set('del', 'DeletedText');
constShortTagToLongTagMappings.set('details', 'Details');
constShortTagToLongTagMappings.set('dfn', 'Definition');
constShortTagToLongTagMappings.set('dialog', 'Dialog');
constShortTagToLongTagMappings.set('div', 'Division');
constShortTagToLongTagMappings.set('dl', 'DescriptionList');
constShortTagToLongTagMappings.set('dt', 'DescriptionTerm');
constShortTagToLongTagMappings.set('em', 'Emphasis');
constShortTagToLongTagMappings.set('embed', 'EmbedExternal');
constShortTagToLongTagMappings.set('fieldset', 'FieldSet');
constShortTagToLongTagMappings.set('figcaption', 'FigureCaption');
constShortTagToLongTagMappings.set('figure', 'Figure');
constShortTagToLongTagMappings.set('footer', 'Footer');
constShortTagToLongTagMappings.set('form', 'Form');
constShortTagToLongTagMappings.set('h1', 'Heading1');
constShortTagToLongTagMappings.set('h2', 'Heading2');
constShortTagToLongTagMappings.set('h3', 'Heading3');
constShortTagToLongTagMappings.set('h4', 'Heading4');
constShortTagToLongTagMappings.set('h5', 'Heading5');
constShortTagToLongTagMappings.set('h6', 'Heading6');
constShortTagToLongTagMappings.set('header', 'Header');
constShortTagToLongTagMappings.set('hr', 'HorizontalRule');
constShortTagToLongTagMappings.set('i', 'Idiomatic');
constShortTagToLongTagMappings.set('iframe', 'IFrame');
constShortTagToLongTagMappings.set('img', 'Image');
constShortTagToLongTagMappings.set('input', 'Input');
constShortTagToLongTagMappings.set('ins', 'InsertedText');
constShortTagToLongTagMappings.set('kbd', 'KeyboardInput');
constShortTagToLongTagMappings.set('label', 'Label');
constShortTagToLongTagMappings.set('legend', 'Legend');
constShortTagToLongTagMappings.set('li', 'ListItem');
constShortTagToLongTagMappings.set('map', 'ImageMap');
constShortTagToLongTagMappings.set('mark', 'MarkText');
constShortTagToLongTagMappings.set('menu', 'Menu');
constShortTagToLongTagMappings.set('meter', 'Meter');
constShortTagToLongTagMappings.set('nav', 'Navigation');
constShortTagToLongTagMappings.set('ol', 'OrderedList');
constShortTagToLongTagMappings.set('optgroup', 'OptionGroup');
constShortTagToLongTagMappings.set('option', 'Option');
constShortTagToLongTagMappings.set('output', 'Output');
constShortTagToLongTagMappings.set('p', 'Paragraph');
constShortTagToLongTagMappings.set('picture', 'Picture');
constShortTagToLongTagMappings.set('portal', 'Portal');
constShortTagToLongTagMappings.set('pre', 'PreformattedText');
constShortTagToLongTagMappings.set('progress', 'Progress');
constShortTagToLongTagMappings.set('q', 'InlineQuotation');
constShortTagToLongTagMappings.set('rp', 'RubyFallbackParenthesis');
constShortTagToLongTagMappings.set('rt', 'RubyText');
constShortTagToLongTagMappings.set('ruby', 'RubyAnnotation');
constShortTagToLongTagMappings.set('s', 'StrikeThrough');
constShortTagToLongTagMappings.set('samp', 'SampleOutput');
constShortTagToLongTagMappings.set('section', 'Section');
constShortTagToLongTagMappings.set('select', 'Select');
constShortTagToLongTagMappings.set('small', 'Small');
constShortTagToLongTagMappings.set('source', 'MediaSource');
constShortTagToLongTagMappings.set('span', 'Span');
constShortTagToLongTagMappings.set('strong', 'Strong');
constShortTagToLongTagMappings.set('sub', 'SubScript');
constShortTagToLongTagMappings.set('summary', 'Summary');
constShortTagToLongTagMappings.set('sup', 'SuperScript');
constShortTagToLongTagMappings.set('table', 'Table');
constShortTagToLongTagMappings.set('tbody', 'TableBody');
constShortTagToLongTagMappings.set('td', 'TableDataCell');
constShortTagToLongTagMappings.set('textarea', 'TextArea');
constShortTagToLongTagMappings.set('tfoot', 'TableFoot');
constShortTagToLongTagMappings.set('th', 'TableHeaderCell');
constShortTagToLongTagMappings.set('thead', 'TableHead');
constShortTagToLongTagMappings.set('time', 'Time');
constShortTagToLongTagMappings.set('tr', 'TableRow');
constShortTagToLongTagMappings.set('track', 'EmbedTextTrack');
constShortTagToLongTagMappings.set('ul', 'UnOrderedList');
constShortTagToLongTagMappings.set('vartag', 'Variable');
constShortTagToLongTagMappings.set('video', 'Video');
constShortTagToLongTagMappings.set('wbr', 'LineBreakOpportunity');

constNativeToRadTagMappings.set('a', 'a');
constNativeToRadTagMappings.set('abbr', 'abbr');
constNativeToRadTagMappings.set('address', 'address');
constNativeToRadTagMappings.set('area', 'area');
constNativeToRadTagMappings.set('article', 'article');
constNativeToRadTagMappings.set('aside', 'aside');
constNativeToRadTagMappings.set('audio', 'audio');
constNativeToRadTagMappings.set('bdi', 'bdi');
constNativeToRadTagMappings.set('bdo', 'bdo');
constNativeToRadTagMappings.set('blockquote', 'blockquote');
constNativeToRadTagMappings.set('br', 'br');
constNativeToRadTagMappings.set('button', 'button');
constNativeToRadTagMappings.set('canvas', 'canvas');
constNativeToRadTagMappings.set('caption', 'caption');
constNativeToRadTagMappings.set('cite', 'cite');
constNativeToRadTagMappings.set('code', 'code');
constNativeToRadTagMappings.set('col', 'col');
constNativeToRadTagMappings.set('colgroup', 'colgroup');
constNativeToRadTagMappings.set('data', 'data');
constNativeToRadTagMappings.set('datalist', 'datalist');
constNativeToRadTagMappings.set('dd', 'dd');
constNativeToRadTagMappings.set('del', 'del');
constNativeToRadTagMappings.set('details', 'details');
constNativeToRadTagMappings.set('dfn', 'dfn');
constNativeToRadTagMappings.set('dialog', 'dialog');
constNativeToRadTagMappings.set('div', 'div');
constNativeToRadTagMappings.set('dl', 'dl');
constNativeToRadTagMappings.set('dt', 'dt');
constNativeToRadTagMappings.set('em', 'em');
constNativeToRadTagMappings.set('embed', 'embed');
constNativeToRadTagMappings.set('fieldset', 'fieldset');
constNativeToRadTagMappings.set('figcaption', 'figcaption');
constNativeToRadTagMappings.set('figure', 'figure');
constNativeToRadTagMappings.set('footer', 'footer');
constNativeToRadTagMappings.set('form', 'form');
constNativeToRadTagMappings.set('h1', 'h1');
constNativeToRadTagMappings.set('h2', 'h2');
constNativeToRadTagMappings.set('h3', 'h3');
constNativeToRadTagMappings.set('h4', 'h4');
constNativeToRadTagMappings.set('h5', 'h5');
constNativeToRadTagMappings.set('h6', 'h6');
constNativeToRadTagMappings.set('header', 'header');
constNativeToRadTagMappings.set('hr', 'hr');
constNativeToRadTagMappings.set('i', 'i');
constNativeToRadTagMappings.set('iframe', 'iframe');
constNativeToRadTagMappings.set('img', 'img');
constNativeToRadTagMappings.set('input', 'input');
constNativeToRadTagMappings.set('ins', 'ins');
constNativeToRadTagMappings.set('kbd', 'kbd');
constNativeToRadTagMappings.set('label', 'label');
constNativeToRadTagMappings.set('legend', 'legend');
constNativeToRadTagMappings.set('li', 'li');
constNativeToRadTagMappings.set('map', 'map');
constNativeToRadTagMappings.set('mark', 'mark');
constNativeToRadTagMappings.set('menu', 'menu');
constNativeToRadTagMappings.set('meter', 'meter');
constNativeToRadTagMappings.set('nav', 'nav');
constNativeToRadTagMappings.set('ol', 'ol');
constNativeToRadTagMappings.set('optgroup', 'optgroup');
constNativeToRadTagMappings.set('option', 'option');
constNativeToRadTagMappings.set('output', 'output');
constNativeToRadTagMappings.set('p', 'p');
constNativeToRadTagMappings.set('picture', 'picture');
constNativeToRadTagMappings.set('portal', 'portal');
constNativeToRadTagMappings.set('pre', 'pre');
constNativeToRadTagMappings.set('progress', 'progress');
constNativeToRadTagMappings.set('q', 'q');
constNativeToRadTagMappings.set('rp', 'rp');
constNativeToRadTagMappings.set('rt', 'rt');
constNativeToRadTagMappings.set('ruby', 'ruby');
constNativeToRadTagMappings.set('s', 's');
constNativeToRadTagMappings.set('samp', 'samp');
constNativeToRadTagMappings.set('section', 'section');
constNativeToRadTagMappings.set('select', 'select');
constNativeToRadTagMappings.set('small', 'small');
constNativeToRadTagMappings.set('source', 'source');
constNativeToRadTagMappings.set('span', 'span');
constNativeToRadTagMappings.set('strong', 'strong');
constNativeToRadTagMappings.set('sub', 'sub');
constNativeToRadTagMappings.set('summary', 'summary');
constNativeToRadTagMappings.set('sup', 'sup');
constNativeToRadTagMappings.set('table', 'table');
constNativeToRadTagMappings.set('tbody', 'tbody');
constNativeToRadTagMappings.set('td', 'td');
constNativeToRadTagMappings.set('textarea', 'textarea');
constNativeToRadTagMappings.set('tfoot', 'tfoot');
constNativeToRadTagMappings.set('th', 'th');
constNativeToRadTagMappings.set('thead', 'thead');
constNativeToRadTagMappings.set('time', 'time');
constNativeToRadTagMappings.set('tr', 'tr');
constNativeToRadTagMappings.set('track', 'track');
constNativeToRadTagMappings.set('ul', 'ul');
constNativeToRadTagMappings.set('var', 'vartag');
constNativeToRadTagMappings.set('video', 'video');
constNativeToRadTagMappings.set('wbr', 'wbr');
