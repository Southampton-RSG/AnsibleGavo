<resource schema="arihip">
  <meta name="title">ARIHIP astrometric catalogue</meta>
  <meta name="creationDate">2010-11-03T10:13:00</meta>
  <meta name="description">
    The catalogue ARIHIP has been constructed by
    selecting the 'best data' for a given star from combinations of HIPPARCOS
    data with Boss' GC and/or the Tycho-2 catalogue as well as the FK6.  It
    provides 'best data' for 90 842 stars with a typical mean error of
    0.89 mas/year (about a factor of 1.3 better than Hipparcos for this
    sample of stars).
  </meta>
  <meta name="creator">Wielen, R.; Schwan, H.; Dettbarn, C.;
    Lenhardt, H.; Jahreiß, H.; Jährling, R; Khalisi, E.</meta>
  <meta name="type">Catalog</meta>

   <meta name="subject">stars</meta>
  <meta name="subject">catalogs</meta>
  <meta name="subject">astrometry</meta>
  <meta name="subject">proper-motions</meta>


  <meta name="coverage.waveband">Optical</meta>

  <coverage>
    <spatial>0/0-11</spatial>
    <spectral>2.721e-19 4.138e-19</spectral>
    <temporal>1989-09-01 1993-08-15</temporal>
  </coverage>

  <FEED source="//procs#license-cc-by" what="ARIHIP"/>

  <meta name="_longdoc" format="rst">
    The ARIHIP Catalogue is a suitable combination of the results of the
    HIPPARCOS astrometry satellite with ground-based data.

    The ARIHIP contains 90842 stars in total. The best astrometric data for
    90072 of these ARIHIP stars have been selected from the direct solutions
    given in the combination catalogues FK6(I), FK6(III), GC+HIP, and TYC2+HIP.
    Such direct solutions are appropriate for single stars or for objects which
    can be treated like single stars.  For these 90072 stars with direct
    solutions, ground-based measurements have contributed to the astrometric
    data (mainly to the proper motions).

    In addition the ARIHIP contains the original HIPPARCOS solutions
    for 770 stars which do not occur in one of these combination catalogues but
    are basically qualified for direct solutions.

    Besides the astrometric data, the ARIHIP provides a variety of flags which
    inform about the known (or possible) binarity of each object. From the
    90842 stars in the ARIHIP we have selected 73023 objects as
    "astrometrically excellent stars", since their instantaneous proper motions
    and mean (time-averaged) ones do not differ significantly. Hence most of
    the astrometrically excellent stars are well-behaving "single-star
    candidates" with good astrometric data. These stars are most suited for
    high-precision astrometry.

    On the other hand, 2827 of the stars in the ARIHIP are Δμ binaries in the
    sense of Wielen et al. (1999). Many of them are newly discovered probable
    binaries with no other hitherto known indication of binarity. The ARIHIP
    gives, besides the classical "single-star mode" solutions (SI mode), other
    solutions which take into account the fact that hidden astrometric binaries
    among "apparently single-stars" introduce sizable "cosmic errors" into the
    quasi-instantaneously measured HIPPARCOS proper motions and positions.

    The ARIHIP gives in addition to the SI mode the "long-term prediction (LTP)
    mode" and the "short-term prediction (STP) mode". These LTP and STP modes
    are on average the most precise solutions for apparently single stars,
    depending on the epoch difference with respect to the HIPPARCOS epoch of
    about 1991. The typical mean error of an ARIHIP proper motion in the
    single-star mode is 0.89 mas/year. This is about a factor of 1.3 better
    than the typical HIPPARCOS errors for these stars of 1.13 mas/year.

    In the long-term prediction mode, in which cosmic errors are taken into
    account, the ARIHIP proper motions have a typical mean error of 1.15
    mas/year, which is by a factor of more than 1.6 better than the
    corresponding error for the HIPPARCOS values of 1.89 mas/year (cosmic
    errors included).

  </meta>

  <meta name="source">2001VeARI..40....1W</meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <!-- reduction modes (we don't do the comparsion to the orig. cat. -->
  <macDef name="modes">
    mname, racols, decols, pmracols, pmdecols, tracols, errracols, errpmracols, tdecols, errdecols, errpmdecols
    LTP, 224-233, 276-285, 328-335,  383-390,  438-444, 478-483,   514-518,     554-560, 594-599,   630-634
    STP, 237-246, 289-298, 339-346,  394-401,  448-454, 487-492,   522-526,     564-570, 603-608,   638-642
    HIP, 250-259, 302-311, 350-357,  405-412,  458-464, 496-501,   530-534,     574-580, 612-617,   646-650
  </macDef>

  <macDef name="parmodes">
    mname, parallaxcols, errparcols
    SI,    670-677,      703-708
    STP,   681-688,      712-717
    HIP,   692-699,      721-726
  </macDef>

  <!-- f-measures computed for various stars -->
  <macDef name="fvals">
    short,shortind,explanat,range
    fh,   FH,      FK5 proper motions vs. Hipparcos,830-835
    f0h,  0H,      original catalogue positions vs. Hipparcos,839-844
    f0gch,0GCH,    GC positions vs. Hipparcos,848-853
    0f,   0F,      FK5 and Hipparcos positions vs. FK5 proper motions, 857-862
    t2h,  T2H,     Tycho2 and Hipparcos proper motions,866-871
  </macDef>


  <table id="main" onDisk="True" adql="True"
      mixin="//scs#pgs-pos-index" primary="hipno">
    <mixin>//scs#pgs-pos-index</mixin>
    <stc>
      Position ICRS Epoch J2000.0 "raj2000" "dej2000" Error "err_ra" "err_de"
        Velocity "pmra" "pmde" Error "err_pmra" "err_pmde"
    </stc>
    <stc>
      Position ICRS Epoch J2000.0 "raHIP" "deHIP" Error "err_raHIP" "err_deHIP"
        Velocity "pmraHIP" "pmdeHIP" Error "err_pmraHIP" "err_pmdeHIP"
    </stc>
    <stc>
      Position ICRS Epoch J2000.0 "raSTP" "deSTP" Error "err_raSTP" "err_deSTP"
        Velocity "pmraSTP" "pmdeSTP" Error "err_pmraSTP" "err_pmdeSTP"
    </stc>
    <stc>
      Position ICRS Epoch J2000.0 "raLTP" "deLTP" Error "err_raLTP" "err_deLTP"
        Velocity "pmraLTP" "pmdeLTP" Error "err_pmraLTP" "err_pmdeLTP"
    </stc>

    <index columns="mv">
      <FEED source="%#fastindex" />
    </index>

    <column name="hipno" type="integer" ucd="meta.id;meta.main"
      tablehead="HIP id" verbLevel="1"
      description="Number of the star in the HIPPARCOS Catalogue (ESA 1997)."
      required="True">
      <values min="1" max="120404"/>
    </column>
    <column name="srcSel" type="text" ucd="meta.code"
      tablehead="Source" verbLevel="25"
      description="Source of the astrometric solution"
      note="src"/>
    <column name="raj2000" type="double precision" ucd="pos.eq.ra;meta.main"
      tablehead="RA (SI)" verbLevel="1" unit="deg"
      description="Right ascension from a single-star solution"
      required="True" displayHint="sf=10"/>
    <column name="dej2000" type="double precision" ucd="pos.eq.dec;meta.main"
      tablehead="Dec (SI)" verbLevel="1" unit="deg"
      description="Declination from a single-star solution"
      required="True" displayHint="sf=10"/>
    <column name="pmra" ucd="pos.pm;pos.eq.ra"
      tablehead="PM RA (SI)" verbLevel="5" unit="deg/yr"
      description="Proper motion in right ascension times cos(delta)
        for a single-star solution."
      displayHint="sf=2,displayUnit=mas/yr"/>
    <column name="pmde" ucd="pos.pm;pos.eq.dec"
      tablehead="PM Dec (SI)" verbLevel="5" unit="deg/yr"
      description="Proper motion in declination for a single-star solution."
      displayHint="sf=2,displayUnit=mas/yr"/>

    <column name="t_ra" ucd="stat.error;time.epoch;pos.eq.ra"
      tablehead="Ep. RA (SI)" verbLevel="25" unit="yr"
      description="Central epoch of RA (SI)"
      displayHint="sf=2"/>
    <column name="err_ra" ucd="stat.error;pos.eq.ra"
      tablehead="Err. RA (SI)" verbLevel="18" unit="deg"
      description="Error in RA from the single star solution, with cos(delta)
        already applied"
      displayHint="sf=2,displayUnit=mas"/>
    <column name="err_pmra" ucd="stat.error;pos.pm;pos.eq.ra"
      tablehead="Err. PM RA (SI)" verbLevel="18" unit="deg/yr"
      description="Mean error in PM(RA)*cos(delta) from the single star
        solution"
      displayHint="sf=2,displayUnit=mas/yr"/>
    <column name="t_de" ucd="stat.error;time.epoch;pos.eq.dec"
      tablehead="Ep. Dec (SI)" verbLevel="25" unit="yr"
      description="Central epoch of Dec (SI)"
      displayHint="sf=2"/>
    <column name="err_de" ucd="stat.error;pos.eq.dec"
      tablehead="Err. Dec (SI)" verbLevel="18" unit="deg"
      description="Error in Dec from the single star solution"
      displayHint="sf=2,displayUnit=mas"/>
    <column name="err_pmde" ucd="stat.error;pos.pm;pos.eq.dec"
      tablehead="Err. PM Dec (SI)" verbLevel="18" unit="deg/yr"
      description="Mean error in PM(Dec) form the single star solution"
      displayHint="sf=2,displayUnit=mas/yr"/>

    <column name="parallax" ucd="pos.parallax"
      tablehead="Parallax" verbLevel="20" unit="deg"
      description="Parallax used in deriving the data of the star in
        the catalogue selected for the ARIHIP. This is either the
        HIPPARCOS parallax or a photometric/spectroscopic parallax (see Kp)."
      displayHint="sf=2,displayUnit=mas"/>
    <column name="e_parallax" ucd="stat.error;pos.parallax"
      tablehead="Err. Par." verbLevel="28" unit="deg"
      description="Mean error of the parallax"
      displayHint="sf=2,displayUnit=mas"/>
    <column name="kp" type="char" ucd="meta.ref;pos.parallax"
      tablehead="Par. Src." verbLevel="22"
      description="Source of the parallax: H Hipparcos, P photometric
        parallax">
      <values nullLiteral=" "/>
    </column>

    <column name="vrad" ucd="phys.veloc;pos.heliocentric"
      tablehead="v_rad" verbLevel="20" unit="km/s"
      description="Radial velocity as used in calculating the foreshortening
        effect."/>
    <column name="mv" ucd="phot.mag;em.opt.V"
        tablehead="m_V" verbLevel="20" unit="mag"
        description="Visual magnitude taken from the HIPPARCOS catalogue">
      <values min="-0.62" max="14.08"/>
    </column>
    <column name="km" type="char" ucd="meta.code;src.var"
      tablehead="Var?" verbLevel="20"
      description="Variability flag.  See note." note="var">
      <values nullLiteral=" "/>
    </column>
    <column name="kbin" type="text" ucd="meta.code.multip"
      tablehead="Multi?" verbLevel="6"
      description="Binarity flag. See note." note="bin">
      <values nullLiteral=" "/>
    </column>
    <column name="kdmu" type="char" ucd="meta.code.multip"
      tablehead="Var mu?" verbLevel="22"
      description="Based on Delta mu, 1 is a single-star candidate, 2
        is a Delta mu binary, and empty values mean uncertain cases">
      <values nullLiteral=" "/>
    </column>
    <column name="kae" type="char" ucd="meta.code.qual"
      tablehead="Excel?" verbLevel="15"
      description="Measure of astrometric quality between 1 and 3,
        higher is better.  Empty values mean the star is not
        'astrometrically excellent'.">
      <values nullLiteral=" "/>
    </column>

    <LOOP csvItems="\modes">
      <events>
        <column name="ra\mname" type="double precision" ucd="pos.eq.ra"
          tablehead="RA (\mname)" verbLevel="17" unit="deg"
          description="Right ascension in \mname mode"
          displayHint="sf=10"/>
        <column name="de\mname" type="double precision" ucd="pos.eq.dec"
          tablehead="Dec (\mname)" verbLevel="17" unit="deg"
          description="Declination in \mname mode"
          displayHint="sf=10"/>
        <column name="pmra\mname" ucd="pos.pm;pos.eq.ra"
          tablehead="PM RA (\mname)" verbLevel="17" unit="deg/yr"
          description="Proper motion in RA, cos(delta) applied, in
            \mname mode"
          displayHint="sf=2,displayUnit=mas/yr"/>
        <column name="pmde\mname" ucd="pos.pm;pos.eq.dec"
          tablehead="PM Dec (\mname)" verbLevel="17" unit="deg/yr"
          description="Proper motion in Dec in \mname mode"
          displayHint="sf=2,displayUnit=mas/yr"/>

        <column name="t_ra\mname" ucd="stat.error;time.epoch;pos.eq.ra"
          tablehead="Ep. RA (\mname)" verbLevel="27" unit="yr"
          description="Central epoch of RA (\mname)"
          displayHint="sf=2"/>
        <column name="err_ra\mname" ucd="stat.error;pos.eq.ra"
          tablehead="Err. RA (\mname)" verbLevel="21" unit="deg"
          description="Error in RA (\mname) with cos(delta) already applied"
          displayHint="sf=2,displayUnit=mas"/>
        <column name="err_pmra\mname" ucd="stat.error;pos.pm;pos.eq.ra"
          tablehead="Err. PM RA (\mname)" verbLevel="21" unit="deg/yr"
          description="Mean error in PM(RA)*cos(delta) in \mname mode"
          displayHint="sf=2,displayUnit=mas/yr"/>
        <column name="t_de\mname" ucd="stat.error;time.epoch;pos.eq.dec"
          tablehead="Ep. Dec (\mname)" verbLevel="27" unit="yr"
          description="Central epoch of Dec (\mname)"
          displayHint="sf=2"/>
        <column name="err_de\mname" ucd="stat.error;pos.eq.dec"
          tablehead="Err. Dec (\mname)" verbLevel="21" unit="deg"
          description="Error in Dec (\mname)"
          displayHint="sf=2,displayUnit=mas"/>
        <column name="err_pmde\mname" ucd="stat.error;pos.pm;pos.eq.dec"
          tablehead="Err. PM Dec (\mname)" verbLevel="21" unit="deg/yr"
          description="Mean error in PM(Dec) in \mname mode"
          displayHint="sf=2,displayUnit=mas/yr"/>
      </events>
    </LOOP>

    <LOOP csvItems="\parmodes">
      <events>
        <column name="parallax\mname" ucd="pos.parallax"
          tablehead="Par. (\mname)" verbLevel="25" unit="deg"
          description="Parallax obtained in solution \mname"
          displayHint="sf=2,displayUnit=mas"/>
        <column name="err_parallax\mname" ucd="stat.error;pos.parallax"
          tablehead="Err. Par. (\mname)" verbLevel="29" unit="deg"
          description="Error in parallax obtained in solution \mname"
          displayHint="sf=2,displayUnit=mas"/>
      </events>
    </LOOP>

    <LOOP csvItems="\fvals">
      <events>
        <column name="f\short" tablehead="F_\shortind"
          description="F-Measure for proper motions \explanat"
          ucd="stat.fit.goodness;pos.pm;arith.diff" note="F"
          verbLevel="25" displayHint="sf=2"/>
      </events>
    </LOOP>

    <column name="flags" type="text" ucd="meta.code"
      tablehead="Flags" verbLevel="25"
      description="Binarity evidence and variability flags (see note)"
      note="tabflags"/>

    <meta name="note" tag="src">
      The srcSel field indicates which catalogue the astrometric solution
      was taken from using the following codes:

      === =========================================
      F61 Part I of the FK6 (Wielen et al. 1999d)
      F63 Part III of the FK6 (Wielen et al. 2000a)
      GCH GC+HIP Catalogue (Wielen et al. 2001b)
      T2H TYC2+HIP Catalogue (Wielen et al. 2001c)
      HIP HIPPARCOS Catalogue (ESA 1997)
      === =========================================
    </meta>

    <meta name="note" tag="var">
      The Km flag indicates the variability of the source and is taken
      from the HIPPARCOS catalogue.  The codes denote:

      ===== ===============================================
      empty star not variable
      1     star variable at the level of  &lt; 0.06  mag
      2     star variable at the level of  0.06 - 0.6  mag
      3     star variable at the level of  &gt; 0.6  mag
      ===== ===============================================
    </meta>

    <meta name="note" tag="bin">
      The column Kbin describes the multiplicity of the object.  In
      consists of up to two digits.

      The first digit describes the evidence for the multiplicity of the object
      based on proper-motion differences.  For details on the method and the
      various test parameters F see Wielen et al (1999a).

      +---+---------------------------------------------------------+
      | 1 | all values of  F (F_{FH}, F_{0H}, F_{0(GC)H}, F_{0F},   |
      |   | F_{TH})  are below 2.49                                 |
      +---+---------------------------------------------------------+
      | 2 | at least one value of  F (F_{FH}, F_{0H}, F_{0(GC)H},   |
      |   | F_{0F}, F_{TH})  is larger than 3.44                    |
      +---+---------------------------------------------------------+
      | 3 | all other (intermediate) cases                          |
      +---+---------------------------------------------------------+
      |   | empty means no F value(s) are available                 |
      +---+---------------------------------------------------------+

      The second digit gives evidence for the multiplicity of the object based
      on non-PM methods. If the data indicate various kinds of binarity, the
      'astrometrically most disturbing' effect is given.  :

      1
        single star indicated
      2
        the star is a member of a visual binary (gravitationally
        bound system), or the object is  resolved by speckle interferometry
      3
        the object is suspected to be a visual binary (mainly due to HIP)
      4
        the star has at least one optical companion with
        a separation of rho &lt; 60"
      5
        the star has at least one optical companion, but all
        companions have a separation of rho &lt;= 60"
      6
        astrometric binary (mainly the non-standard solutions O, G,
        V, X of HIP)
      7
        spectroscopic binary with a known orbit, or the star is an
        eclipsing binary
      8
        the radial velocity of the star is variable (indicating a
        spectroscopic binary), or the object shows a composite
        spectrum (indicating a double star)
      9
        the radial velocity of the star may be variable (possible
        indication for a spectroscopic binary), or the object may
        show a composite spectrum (possibly indicating a double
        star), or other weak indications of binarity, or the star
        has a (suspected) planetary companion
    </meta>

    <meta name="note" tag="tabflags"><![CDATA[
      The flags field collects a number of flags related to indications
      of multiplicity.  The flags are organized into columns in the form
      ``H UF KC GBST AML VPI``.  The individual columns mean:

      Column H
        HIPPARCOS indicators for a suspected visual binary:

        === =============================================
         s  Flag S in HIP Field H61
         d  Flag D in HIP Field H52, based on photometry.
         t  HIP Flags S and D (t = s+d).
        === =============================================

      Column U
        HIPPARCOS percentage of rejected data (HIP Field H29, F1);
        one digit: 0, 1, 2, ... percent; 9: 9 or more percent.
        A high percentage of rejected data may be caused by a duplicity of
        the object, but other reasons cannot be excluded.


      Column F
        HIPPARCOS goodness-of-fit parameter (HIP Field H30, F2):

        ==== ===============
         -          F2 < 0
         0     0 <= F2 < 1
         1     1 <= F2 < 2
         2     2 <= F2 < 3
         3     3 <= F2 < 4
         4     4 <= F2 < 5
        etc.
         8     8 <= F2 < 9
         9     9 <= F2
        ==== ===============

        A large value of F2 (e.g. larger than 3) may be caused by a duplicity of
        the object, but other reasons cannot be excluded.


      Column K
        Indications on binarity provided by the catalogue of
        speckle observations (Hartkopf et al. 1999).

        b
          binary resolved by speckle (or other interferometric) observations
          (such objects are generally excluded from the ARIHIP)
        u
          possibly resolved
        n
          object observed, but not resolved (i.e. no hint to binarity)


      Column C
        Indicator for a star which has one (or more) visual component(s) with a
        separation rho of at least 60".  Source of information:

        === ====================================================
         c  CCDM (Dommanget and Nys 1994)
         t  TYCHO2 (Hoeg et al. 2000)
         w  WDS (Worley and Douglass 1997, and updated versions)
         r  other sources
        === ====================================================

        Visual binaries with rho < 60" are generally excluded from the ARIHIP.



      Column G
        Indications on binarity provided by the General Catalogue of
        Stellar Radial Velocities (GCRV, Wilson 1953):

        === =====================================================
         v  radial velocity is variable
         u  radial velocity may be variable
         2  variable radial velocities for two stellar components
         b  (other) indications of binarity
         d  (other) indications of binarity are doubtful
        === =====================================================


      Column B
        Indications on binarity provided by the Bright Star Catalogue (BSC,
        Hoffleit and Jaschek 1982).  The symbols v, u, 2, b, d have the same
        meaning as explained for Column G.


      Column S
        Indications on binarity provided by the radial-velocity bibliography
        given in the data block 'oRV' of SIMBAD (CDS Strasbourg).  The symbols
        v, u, 2, b, d have the same meaning as explained for Column G.


      Column T
        Indications on binarity provided by the spectral-type bibliography
        given in the data block 'MK' of SIMBAD (CDS Strasbourg); b means
        binary, u means possibly a binary.


      Column A
        Indications on binarity provided by the Third Bibliographic Catalogue
        of Stellar Radial Velocities (Barbier-Brossat et al. 1994).  The
        symbols v, u, 2, b, d have the same meaning as explained for Column G.


      Column M
        Indications on binarity provided by the Bibliographic Catalogue of
        Stellar Radial Velocities 1991-1998 (Malaroda et al. 2001).  The
        symbols v, u, 2, b, d have the same meaning as explained for Column G;
        additionally, f denotes "probably erroneous indication on binarity"


      Column L
        Indications on binarity from additional literature (e.g. from papers
        more recent than those used for Column M).  The symbols v, u, 2, b, d
        have the same meaning as explained for Column G.  Additionally, c means
        that the radial velocity is probably constant.


      Column V
        Indications on binarity from photometric variability.

        === ======================================
         a  eclipsing binary, Algol type
         b  eclipsing binary, beta Lyrae type
         e  eclipsing binary, type uncertain
         w  eclipsing binary, W Ursae Majoris type
        === ======================================

      Column P
        Indicator for a variability of the radial velocity V_rad due to
        stellar pulsation (which may be confused with a variability of
        V_rad due to spectroscopic binarity).

        === ================
         c  Cepheid
         s  delta Scuti star
         b  beta Cephei star
        === ================


      Column I
        An i here means that an individual note on this star is given in Part I
        (1-560) or III (3001-3024) of the FK6
      ]]></meta>
  </table>

  <data id="import">
    <sources>data/data.txt.gz</sources>
    <!-- The input assumes a dump from the web site file with the HTML
      junk at the foot removed and everything at the top removed
      down to (but not including) the line with the column indices -->
    <columnGrammar topIgnoredLines="9" preFilter="zcat" enc="iso-8859-1">
      <colDefs>
        hipno:     3-8
        srcSel:    47-49
        alphaHMS:  59-73
        deltaDMS:  77-91
        pmra_mas:  95-103
        pmde_mas:  107-115
        t_ra_mod:  119-123
        err_ra_mas:127-131
        err_pmra_mas:135-139
        t_de_mod:  143-147
        err_de_mas:151-155
        err_pmde_mas:159-163
        parallax_mas:167-172
        e_parallax_mas:176-180
        kp:        184
        vrad:      188-195
        mv:        199-203
        km:        207
        kbin:      211-212
        kdmu:      216
        kae:       220
        flags:     882-901
      </colDefs>

      <LOOP csvItems="\modes">
        <events>
          <col key="dra\mname">\racols</col>
          <col key="dde\mname">\decols</col>
          <col key="dpmra\mname">\pmracols</col>
          <col key="dpmde\mname">\pmdecols</col>
          <col key="t_ra\mname">\tracols</col>
          <col key="err_ra\mname\+_mas">\errracols</col>
          <col key="err_pmra\mname\+_mas">\errpmracols</col>
          <col key="t_de\mname">\tdecols</col>
          <col key="err_de\mname\+_mas">\errdecols</col>
          <col key="err_pmde\mname\+_mas">\errpmdecols</col>
        </events>
      </LOOP>

      <LOOP csvItems="\parmodes">
        <events>
          <col key="parallax\mname">\parallaxcols</col>
          <col key="err_parallax\mname">\errparcols</col>
        </events>
      </LOOP>

      <LOOP csvItems="\fvals">
        <events>
          <col key="f\short">\range</col>
        </events>
      </LOOP>
    </columnGrammar>

    <make table="main">
      <rowmaker idmaps="*">
        <var name="raj2000">hmsToDeg(@alphaHMS, None)</var>
        <var name="dej2000">dmsToDeg(@deltaDMS, None)</var>
        <var name="pmra">float(killBlanks(@pmra_mas))/3600000.</var>
        <var name="pmde">float(killBlanks(@pmde_mas))/3600000.</var>

        <var name="t_ra">float(@t_ra_mod)+1900</var>
        <var name="err_ra">float(@err_ra_mas)/3600000.</var>
        <var name="err_pmra">float(@err_pmra_mas)/3600000.</var>

        <var name="t_de">float(@t_de_mod)+1900</var>
        <var name="err_de">float(@err_de_mas)/3600000.</var>
        <var name="err_pmde">float(@err_pmde_mas)/3600000.</var>

        <var name="parallax">float(@parallax_mas)/3600000.</var>
        <var name="e_parallax">float(@e_parallax_mas)/3600000.</var>

        <LOOP csvItems="\modes">
          <events>
            <map dest="ra\mname">@raj2000+float(
              killBlanks(@dra\mname))/3600000./math.cos(
              @dej2000*utils.DEG)</map>
            <map dest="de\mname">@dej2000+float(
              killBlanks(@dde\mname))/3600000.</map>
            <map dest="pmra\mname">@pmra+float(
              killBlanks(@dpmra\mname))/3600000.</map>
            <map dest="pmde\mname">@pmde+float(
              killBlanks(@dpmde\mname))/3600000.</map>
            <map dest="err_ra\mname">float(@err_ra\mname\+_mas)/3600000.</map>
            <map dest="err_pmra\mname">float(@err_pmra\mname\+_mas
              )/3600000.</map>
            <map dest="err_de\mname">float(@err_de\mname\+_mas
              )/3600000.</map>
            <map dest="err_pmde\mname">float(@err_pmde\mname\+_mas
              )/3600000.</map>
          </events>
        </LOOP>

        <LOOP csvItems="\parmodes">
          <events>
            <map dest="parallax\mname">float(killBlanks(@parallax\mname)
              )/3600000.</map>
            <map dest="err_parallax\mname">float(
              killBlanks(@err_parallax\mname))/3600000.</map>
          </events>
        </LOOP>

        <map dest="kbin">parseWithNull(@kbin, str, "9")</map>
        <map dest="vrad">parseWithNull(
          @vrad, lambda a:float(killBlanks(a)), "")</map>
      </rowmaker>
    </make>
  </data>


  <service id="cone" allowed="scs.xml,form,static">
    <meta name="shortName">arihip cone</meta>
    <meta name="testQuery">
      <meta name="ra">9.4076</meta>
      <meta name="dec">9.6414</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <!-- this is to allow access to the raw data.  Decide for yourself
    whether or not you want this -->
    <property name="staticData">data</property>

    <scsCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
      <condDesc buildFrom="mv"/>
      <condDesc>
        <inputKey original="hipno" required="False"/>
      </condDesc>
    </scsCore>

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="ivo_managed,local"/>
    <outputTable verbLevel="20"/>
  </service>

  <regSuite title="ARIHIP regression">
    <regTest title="ARIHIP form service appears to work.">
      <url parSet="form" hscs_sr="1.0" hscs_pos="0.00  1.08"
        >cone/form</url>
      <code>
        self.assertHasStrings("PM RA (STP)",
          "1.0890086361", "-5.00", "Note bin")
      </code>
    </regTest>

    <regTest title="ARIHIP SCS response looks reasonable">
      <url RA="0.0273384667" DEC="25.8864593500" SR="0.001"
        VERB="3">cone/scs.xml</url>
      <code>
        row = self.getFirstVOTableRow()
        self.assertEqual(row["flags"], 's 00 .. .... ... ...')
        self.assertAlmostEqual(row["err_parallaxSI"], 5.25e-07)
        self.assertEqual(row["hipno"], '8')
      </code>
    </regTest>
  </regSuite>
</resource>

<!--
vim:et:sta:sw=2
-->