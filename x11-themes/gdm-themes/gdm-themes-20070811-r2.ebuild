# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-themes/gdm-themes/gdm-themes-20070811-r1.ebuild,v 1.6 2013/02/07 22:48:03 ulm Exp $

inherit eutils

DESCRIPTION="Some nice themes for the GDM Greeter"
S=${WORKDIR}
THEME_URI="ftp://ftp.gnome.org/pub/gnome/teams/art.gnome.org/themes/gdm_greeter"
SRC_URI="${THEME_URI}/GDM-Curve.tar.gz
	${THEME_URI}/GDM-SoftFlowerWidescreen1280x800.tar.gz
	${THEME_URI}/GDM-GDMLamp.tar.gz
	${THEME_URI}/GDM-EarthLights.tar.gz
	${THEME_URI}/GDM-SoftFlowerGdm.tar.gz
	${THEME_URI}/GDM-BlueSwirl.tar.bz2
	${THEME_URI}/GDM-ManzanaTux.tar.gz
	${THEME_URI}/GDM-Tango.tar.gz
	${THEME_URI}/GDM-CleanLinux.tar.gz
	${THEME_URI}/GDM-CleanX.tar.gz
	${THEME_URI}/GDM-Sakura.tar.gz
	${THEME_URI}/GDM-CleanGnome.tar.gz
	${THEME_URI}/GDM-SimpleElegance.tar.gz
	${THEME_URI}/GDM-Wolf.tar.gz
	${THEME_URI}/GDM-DroplineFun.tar.bz2
	${THEME_URI}/GDM-SpanishNight.tar.gz
	${THEME_URI}/GDM-SunPuttingInAlmeriaSpain.tar.gz
	${THEME_URI}/GDM-Northside.tar.gz
	${THEME_URI}/GDM-AproachOne.tar.gz
	${THEME_URI}/GDM-EaseOfBlue.tar.bz2
	${THEME_URI}/GDM-GnomeBlack.tar.gz
	${THEME_URI}/GDM-GnomeZen.tar.gz
	${THEME_URI}/GDM-GNOMEPlanetByEmailandthingsCom.tar.gz
	${THEME_URI}/GDM-Insectz.tar.gz
	${THEME_URI}/GDM-FlyAway.tar.gz
	${THEME_URI}/GDM-SunergosGDM.tar.gz
	${THEME_URI}/GDM-CelticWXGA.tar.gz
	${THEME_URI}/GDM-GnomeIsland.tar.gz
	${THEME_URI}/GDM-DarkCleanLinux.tar.gz
	${THEME_URI}/GDM-GnomeMoment.tar.gz
	${THEME_URI}/GDM-PiratesOfGnome.tar.gz
	${THEME_URI}/GDM-GNOMECorvette.tar.gz
	${THEME_URI}/GDM-LoginScanFusion.tar.gz
	${THEME_URI}/GDM-Earth.tar.gz
	${THEME_URI}/GDM-BaltixNorthsidewithUserfaceList.tar.gz
	${THEME_URI}/GDM-GreenForest.tar.gz
	${THEME_URI}/GDM-GinzaGDMTheme.tar.gz
	${THEME_URI}/GDM-FernandoAlonso.tar.gz
	${THEME_URI}/GDM-ZX6R.tar.bz2
	${THEME_URI}/GDM-BackcountrySkiing.tar.gz
	${THEME_URI}/GDM-GdmMadTux2.tar.gz
	${THEME_URI}/GDM-GdmMadTux.tar.gz
	${THEME_URI}/GDM-SimpleBlue.tar.gz
	${THEME_URI}/GDM-Greenlines.tar.gz
	${THEME_URI}/GDM-VarietyBrushed.tar.gz
	${THEME_URI}/GDM-YZF600R.tar.gz
	${THEME_URI}/GDM-LoznicaSerbia.tar.gz
	${THEME_URI}/GDM-SunergosSimple.tar.gz
	${THEME_URI}/GDM-WhiteFootOnGreen.tar.gz

	${THEME_URI}/GDM-GNULinuxBuddhistGDMColourENG.tar.gz
	${THEME_URI}/GDM-LandingClearance.tar.gz
	${THEME_URI}/GDM-SharpGDM.tar.gz
	${THEME_URI}/GDM-BalloonsBlueGDM.tar.gz
	${THEME_URI}/GDM-ZenLogin.tar.gz
	${THEME_URI}/GDM-LightCoffee.tar.gz"

HOMEPAGE="http://art.gnome.org/themes/gdm_greeter/"

RDEPEND="gnome-base/gdm"
DEPEND="app-arch/unzip"

SLOT="0"
LICENSE="CC-BY-NC-ND-2.0 CC-BY-2.0 GPL-2
LGPL-2.1 public-domain"
KEYWORDS="~alpha amd64 ~ia64 ppc ~ppc64 sparc x86"
IUSE=""

src_unpack() {
	return 0
}

src_compile() {
	einfo "Nothing to compile"
}

src_install() {
	dodir /usr/share/gdm/themes
	cd "${D}"/usr/share/gdm/themes

	unpack ${A}
	epatch "${FILESDIR}"/soft-flower-gdm.diff
	epatch "${FILESDIR}"/gdm-themes-landclear.patch

	chmod -R ugo=rX *
}
