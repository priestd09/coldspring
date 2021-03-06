<DOCFLEX_TEMPLATE VER='1.13'>
CREATED='2005-10-08 05:00:00'
LAST_UPDATE='2009-10-30 06:36:29'
DESIGNER_TOOL='DocFlex SDK 1.x'
DESIGNER_LICENSE_TYPE='Filigris Works Team'
APP_ID='docflex-xml-xsddoc2'
APP_NAME='DocFlex/XML XSDDoc'
APP_VER='2.2.0'
APP_AUTHOR='Copyright \u00a9 2005-2009 Filigris Works,\nLeonid Rudy Softwareprodukte. All rights reserved.'
TEMPLATE_TYPE='DocumentTemplate'
DSM_TYPE_ID='xsddoc'
ROOT_ET='<ANY>'
<TEMPLATE_PARAMS>
	PARAM={
		param.name='show.about';
		param.title='About (footer)';
		param.type='enum';
		param.enum.values='full;short;none';
	}
</TEMPLATE_PARAMS>
FMT={
	doc.lengthUnits='pt';
	doc.hlink.style.link='cs2';
}
<STYLES>
	CHAR_STYLE={
		style.name='Default Paragraph Font';
		style.id='cs1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Hyperlink';
		style.id='cs2';
		text.decor.underline='true';
		text.color.foreground='#0000FF';
	}
	PAR_STYLE={
		style.name='Normal';
		style.id='s1';
		style.default='true';
	}
	CHAR_STYLE={
		style.name='Normal Smallest';
		style.id='cs3';
		text.font.name='Arial';
		text.font.size='8';
	}
</STYLES>
<ROOT>
	<AREA_SEC>
		FMT={
			sec.outputStyle='table';
			text.style='cs3';
			text.option.renderNLs='false';
			table.sizing='Relative';
			table.cellpadding.both='3';
			table.bkgr.color='#E7EDF6';
			table.border.style='solid';
			table.border.color='#999999';
			table.page.keepTogether='true';
			table.option.borderStylesInHTML='true';
		}
		<AREA>
			<HR>
				FMT={
					rule.style='dashed';
					rule.color='#B2B2B2';
					par.margin.top='12';
					par.margin.bottom='6';
					par.page.keepWithNext='true';
				}
			</HR>
			<CTRL_GROUP>
				<CTRLS>
					<SS_CALL_CTRL>
						FMT={
							ctrl.size.width='499.5';
							ctrl.size.height='17.3';
						}
						SS_NAME='Details'
					</SS_CALL_CTRL>
				</CTRLS>
			</CTRL_GROUP>
		</AREA>
	</AREA_SEC>
</ROOT>
<STOCK_SECTIONS>
	<FOLDER>
		SS_NAME='Details'
		<BODY>
			<AREA_SEC>
				COND='hasParamValue("show.about", "short")'
				BREAK_PARENT_BLOCK='when-executed'
				<AREA>
					<CTRL_GROUP>
						<CTRLS>
							<LABEL>
								TEXT='XML schema documentation generated with'
							</LABEL>
							<DATA_CTRL>
								<URL_HLINK>
									COND='output.generator.name == "DocFlex/XML RE"'
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='"http://www.filigris.com/products/docflex_xml/#docflex-xml-re"'
								</URL_HLINK>
								<URL_HLINK>
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='"http://www.filigris.com/products/docflex_xml/#docflex-xml-sdk"'
								</URL_HLINK>
								FORMULA='output.generator.name'
							</DATA_CTRL>
							<DATA_CTRL>
								FORMULA='output.generator.version'
							</DATA_CTRL>
							<LABEL>
								TEXT='using'
							</LABEL>
							<DATA_CTRL>
								<URL_HLINK>
									TARGET_FRAME_EXPR='"_blank"'
									TARGET_FRAME_ALWAYS
									URL_EXPR='"http://www.filigris.com/products/docflex_xml/xsddoc/"'
								</URL_HLINK>
								FORMULA='template.appName'
							</DATA_CTRL>
							<DATA_CTRL>
								FORMULA='template.appVersion'
							</DATA_CTRL>
							<LABEL>
								TEXT='template set'
							</LABEL>
							<DELIMITER>
								FMT={
									txtfl.delimiter.type='text';
									txtfl.delimiter.text='. ';
								}
							</DELIMITER>
							<PANEL>
								COND='checkVar ("has-content-model-diagrams")\n&&\ndsm.imageProvider.class == "com.docflex.xml.xmlspy.SpyKit"'
								FMT={
									ctrl.size.width='447';
									ctrl.size.height='38.3';
								}
								<AREA>
									<CTRL_GROUP>
										<CTRLS>
											<LABEL>
												TEXT='All content model diagrams generated by'
											</LABEL>
											<LABEL>
												<URL_HLINK>
													TARGET_FRAME_EXPR='"_blank"'
													TARGET_FRAME_ALWAYS
													URL_EXPR='"http://www.altova.com/xmlspy"'
												</URL_HLINK>
												TEXT='Altova XMLSpy'
											</LABEL>
											<LABEL>
												TEXT='via'
											</LABEL>
											<LABEL>
												<URL_HLINK>
													TARGET_FRAME_EXPR='"_blank"'
													TARGET_FRAME_ALWAYS
													URL_EXPR='"http://www.filigris.com/products/docflex_xml/integrations/xmlspy/"'
												</URL_HLINK>
												TEXT='DocFlex/XML XMLSpy Integration'
											</LABEL>
											<DELIMITER>
												FMT={
													txtfl.delimiter.type='none';
												}
											</DELIMITER>
											<LABEL>
												TEXT='.'
											</LABEL>
										</CTRLS>
									</CTRL_GROUP>
								</AREA>
							</PANEL>
						</CTRLS>
					</CTRL_GROUP>
				</AREA>
			</AREA_SEC>
			<FOLDER>
				COND='hasParamValue("show.about", "full")'
				<BODY>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									par.margin.bottom='8';
								}
								<CTRLS>
									<LABEL>
										TEXT='This XML schema documentation has been generated with'
									</LABEL>
									<DATA_CTRL>
										<URL_HLINK>
											COND='output.generator.name == "DocFlex/XML RE"'
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/#docflex-xml-re"'
										</URL_HLINK>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/#docflex-xml-sdk"'
										</URL_HLINK>
										FORMULA='output.generator.name'
									</DATA_CTRL>
									<DATA_CTRL>
										FORMULA='output.generator.version'
									</DATA_CTRL>
									<LABEL>
										TEXT='using'
									</LABEL>
									<DATA_CTRL>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/xsddoc/"'
										</URL_HLINK>
										FORMULA='template.appName'
									</DATA_CTRL>
									<DATA_CTRL>
										FORMULA='template.appVersion'
									</DATA_CTRL>
									<LABEL>
										TEXT='template set.'
									</LABEL>
									<PANEL>
										COND='checkVar ("has-content-model-diagrams")\n&&\ndsm.imageProvider.class == "com.docflex.xml.xmlspy.SpyKit"'
										FMT={
											ctrl.size.width='466.5';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<LABEL>
														TEXT='All content model diagrams were generated by'
													</LABEL>
													<LABEL>
														<URL_HLINK>
															TARGET_FRAME_EXPR='"_blank"'
															TARGET_FRAME_ALWAYS
															URL_EXPR='"http://www.altova.com/xmlspy"'
														</URL_HLINK>
														TEXT='Altova XMLSpy'
													</LABEL>
													<LABEL>
														TEXT='via'
													</LABEL>
													<LABEL>
														<URL_HLINK>
															TARGET_FRAME_EXPR='"_blank"'
															TARGET_FRAME_ALWAYS
															URL_EXPR='"http://www.filigris.com/products/docflex_xml/integrations/xmlspy/"'
														</URL_HLINK>
														TEXT='DocFlex/XML XMLSpy Integration'
													</LABEL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='none';
														}
													</DELIMITER>
													<LABEL>
														TEXT='.'
													</LABEL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									par.margin.bottom='8';
								}
								<CTRLS>
									<DATA_CTRL>
										<URL_HLINK>
											COND='output.generator.name == "DocFlex/XML RE"'
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/#docflex-xml-re"'
										</URL_HLINK>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/"'
										</URL_HLINK>
										FORMULA='output.generator.name'
									</DATA_CTRL>
									<PANEL>
										COND='output.generator.name == "DocFlex/XML RE"'
										FMT={
											ctrl.size.width='219';
											ctrl.size.height='38.3';
										}
										<AREA>
											<CTRL_GROUP>
												<CTRLS>
													<LABEL>
														TEXT='is a reduced edition of'
													</LABEL>
													<LABEL>
														<URL_HLINK>
															TARGET_FRAME_EXPR='"_blank"'
															TARGET_FRAME_ALWAYS
															URL_EXPR='"http://www.filigris.com/products/docflex_xml/"'
														</URL_HLINK>
														TEXT='DocFlex/XML'
													</LABEL>
													<DELIMITER>
														FMT={
															txtfl.delimiter.type='text';
															txtfl.delimiter.text=', ';
														}
													</DELIMITER>
													<LABEL>
														TEXT='which'
													</LABEL>
												</CTRLS>
											</CTRL_GROUP>
										</AREA>
									</PANEL>
									<LABEL>
										TEXT='is a tool for programming and running highly sophisticated documentation and reports generators by the data obtained from'
									</LABEL>
									<LABEL>
										TEXT='any kind of XML files.'
									</LABEL>
									<LABEL>
										TEXT='The actual doc-generators are implemented in the form of special templates that are designed visually'
									</LABEL>
									<LABEL>
										TEXT='using a high quality Template Designer GUI basing on the XML schema (or DTD) files describing the data source XML.'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									par.margin.bottom='8';
								}
								<CTRLS>
									<DATA_CTRL>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/xsddoc/"'
										</URL_HLINK>
										FORMULA='template.appName'
									</DATA_CTRL>
									<LABEL>
										TEXT='is a commercial template application of'
									</LABEL>
									<LABEL>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/"'
										</URL_HLINK>
										TEXT='DocFlex/XML'
									</LABEL>
									<LABEL>
										TEXT='that implements a high-end XML Schema'
									</LABEL>
									<LABEL>
										TEXT='documentation generator with simultaneous support of framed multi-file HTML, single-file HTML and RTF output formats.'
									</LABEL>
									<LABEL>
										TEXT=' (More formats are planned in the future).'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									par.margin.bottom='8';
								}
								<CTRLS>
									<LABEL>
										TEXT='A commercial license for'
									</LABEL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=' "';
										}
									</DELIMITER>
									<DATA_CTRL>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/xsddoc/"'
										</URL_HLINK>
										FORMULA='template.appName'
									</DATA_CTRL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text='" ';
										}
									</DELIMITER>
									<LABEL>
										TEXT='will allow you:'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						FMT={
							sec.outputStyle='list';
						}
						<AREA>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='To configure the generated documentation so much as you want.'
									</LABEL>
									<LABEL>
										TEXT='Thanks to our template technology,'
									</LABEL>
									<LABEL>
										TEXT='it was possible to support more than 300 template parameters'
									</LABEL>
									<LABEL>
										TEXT='(working the same as "options" of an ordinary doc-gen),'
									</LABEL>
									<LABEL>
										TEXT='which will give you an unprecedented control over the generated content!'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='To use certain features disabled in the free mode'
									</LABEL>
									<LABEL>
										TEXT='(such as the full documenting of substitution groups).'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='To enable/disable documenting of the initial, imported, included and redefined XML schemas selectively.'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='To document local element components both globally and locally'
									</LABEL>
									<LABEL>
										TEXT='(similar to attributes).'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='To enable/disable reproducing of namespace prefixes.'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='To format your annotations with XHTML tags and reproduce that formatting both in HTML and RTF output.'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='To insert images in your annotations using XHTML <img> tags (supported both in HTML and RTF output).'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='To use'
									</LABEL>
									<LABEL>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/xsddoc/#PlainDoc.tpl"'
										</URL_HLINK>
										TEXT='PlainDoc.tpl'
									</LABEL>
									<LABEL>
										TEXT='main template to generate all the XML schema documentation in the form of a single HTML file.'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='To use the same template to generate the incredible quality RTF documentation.'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='To document only selected XML schema components specified by name.'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								<CTRLS>
									<LABEL>
										TEXT='To remove this very advertisement text'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
					<AREA_SEC>
						<AREA>
							<CTRL_GROUP>
								FMT={
									par.margin.top='8';
								}
								<CTRLS>
									<LABEL>
										TEXT='Once having only such a license, you will be able to run the fully-featured XML schema documentation generator both with'
									</LABEL>
									<LABEL>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/#docflex-xml-sdk"'
										</URL_HLINK>
										TEXT='DocFlex/XML SDK'
									</LABEL>
									<LABEL>
										TEXT='and with'
									</LABEL>
									<LABEL>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/#docflex-xml-re"'
										</URL_HLINK>
										TEXT='DocFlex/XML RE'
									</LABEL>
									<DELIMITER>
										FMT={
											txtfl.delimiter.type='text';
											txtfl.delimiter.text=', ';
										}
									</DELIMITER>
									<LABEL>
										TEXT='which is a reduced free edition containing only the template interpretor / output generator.'
									</LABEL>
									<LABEL>
										TEXT='No other licenses will be required!'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									par.margin.top='8';
								}
								<CTRLS>
									<LABEL>
										TEXT='But this is not all. In addition to it, a commercial license for'
									</LABEL>
									<LABEL>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/#docflex-xml-sdk"'
										</URL_HLINK>
										TEXT='DocFlex/XML SDK'
									</LABEL>
									<LABEL>
										TEXT='will allow you to modify the'
									</LABEL>
									<LABEL>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/products/docflex_xml/xsddoc/"'
										</URL_HLINK>
										TEXT='XSDDoc'
									</LABEL>
									<LABEL>
										TEXT='templates themselves as much as you want.'
									</LABEL>
									<LABEL>
										TEXT='You will be able to achieve whatever was impossible to do with the template parameters only.'
									</LABEL>
									<LABEL>
										TEXT='And, of course, you could develop any template applications by your own!'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									text.color.foreground='#009F00';
									par.margin.top='8';
								}
								<CTRLS>
									<LABEL>
										TEXT='Please note: By purchasing a license for this software, you not only acquire a useful tool,'
									</LABEL>
									<LABEL>
										TEXT='you will also make an important investment in its future development, the result of which you could enjoy later by yourself.'
									</LABEL>
									<LABEL>
										TEXT='Every single your purchase matters and makes a difference for us!'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
							<CTRL_GROUP>
								FMT={
									par.margin.top='8';
								}
								<CTRLS>
									<LABEL>
										TEXT='To buy a license, please follow this link:'
									</LABEL>
									<LABEL>
										<URL_HLINK>
											TARGET_FRAME_EXPR='"_blank"'
											TARGET_FRAME_ALWAYS
											URL_EXPR='"http://www.filigris.com/shop/"'
										</URL_HLINK>
										TEXT='http://www.filigris.com/shop/'
									</LABEL>
								</CTRLS>
							</CTRL_GROUP>
						</AREA>
					</AREA_SEC>
				</BODY>
			</FOLDER>
		</BODY>
	</FOLDER>
</STOCK_SECTIONS>
CHECKSUM='f6s0F439yDa81H6bYf2F061q9juenW1LPGF5aJNrLN4'
</DOCFLEX_TEMPLATE>