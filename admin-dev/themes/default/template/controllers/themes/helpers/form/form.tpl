{*
* 2007-2014 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
{extends file="helpers/form/form.tpl"}

{block name="defaultForm"}
	{if $context_mode == Context::MODE_HOST}

	<div class="defaultForm form-horizontal">
		{if $logged_on_addons}

			<div class="panel">
				<div class="row">
					<div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
						<img class="img-responsive" alt="PrestaShop Addons" src="/img/bo/logo_addons.png">
					</div>
					<div class="col-lg-4 col-lg-offset-1 col-md-4 col-sm-7 col-xs-12 addons-style-search-bar">
						<form id="addons-search-form" method="get" action="http://addons.prestashop.com/{$iso_code}/search" class="float">
						<label>{l s='Search on Prestashop Addons:'}</label>
						<div class="input-group">
							<input id="addons-search-box" class="form-control" type="text" autocomplete="off" name="query" value="" placeholder="Search on Prestashop Addons">
							<div id="addons-search-btn" class="btn btn-primary input-group-addon">
								<i class="icon-search"></i>
							</div>
						</div>
						</form>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-5 col-xs-12 addons-see-all-themes">
						<a href="http://addons.prestashop.com/{$iso_code}/3-templates-prestashop" class="btn btn-primary" onclick="return !window.open(this.href)p">{l s='See all themes'}</a>
					</div>
				</div>
			</div>

		{else}

			<div class="panel" id="">
				<div class="panel-heading">
					<i class="icon-picture"></i> {l s='Add a new theme'}
				</div>

				<div class="form-wrapper">
					<div class="form-group">
						<p>{l s='To add a new theme, simply connect to your PrestaShop Addons account and all your purchaseswill be automatically imported.'}</p>
					</div>
				</div><!-- /.form-wrapper -->

				<div class="panel-footer">
					<a href="http://addons.prestashop.com/en/3-templates-prestashop?utm_source=back-office&amp;utm_medium=theme-button&amp;utm_campaign=back-office-EN&amp;utm_content=cloud" class="btn btn-default" onclick="return !window.open(this.href)">
						<i class="process-icon-themes"></i> {l s='Visit the theme catalog'}
					</a>
					<a href="#" data-toggle="modal" data-target="#modal_addons_connect" class="btn btn-default pull-right">
						<i class="process-icon-next"></i> {l s='Next'}
					</a>
				</div>
			</div>

		{/if}

			<div class="alert alert-info">
				<h4>{l s='Can I add my own theme?'}</h4>
				<p>{l s='Please note that for security reasons, you can only add themes that are being distributed on PrestaShop Addons, the official marketplace.'}</p>
			</div>

	</div>

	{else}
		{$smarty.block.parent}
	{/if}
{/block}