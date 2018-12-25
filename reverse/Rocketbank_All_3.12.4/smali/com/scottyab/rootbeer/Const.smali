.class public final Lcom/scottyab/rootbeer/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field public static final knownDangerousAppsPackages:[Ljava/lang/String;

.field public static final knownRootAppsPackages:[Ljava/lang/String;

.field public static final knownRootCloakingPackages:[Ljava/lang/String;

.field public static final pathsThatShouldNotBeWrtiable:[Ljava/lang/String;

.field public static final suPaths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x6

    .line 12
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "com.noshufou.android.su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.noshufou.android.su.elite"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "eu.chainfire.supersu"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "com.koushikdutta.superuser"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "com.thirdparty.superuser"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "com.yellowes.su"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lcom/scottyab/rootbeer/Const;->knownRootAppsPackages:[Ljava/lang/String;

    .line 22
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "com.koushikdutta.rommanager"

    aput-object v2, v1, v3

    const-string v2, "com.koushikdutta.rommanager.license"

    aput-object v2, v1, v4

    const-string v2, "com.dimonvideo.luckypatcher"

    aput-object v2, v1, v5

    const-string v2, "com.chelpus.lackypatch"

    aput-object v2, v1, v6

    const-string v2, "com.ramdroid.appquarantine"

    aput-object v2, v1, v7

    const-string v2, "com.ramdroid.appquarantinepro"

    aput-object v2, v1, v8

    sput-object v1, Lcom/scottyab/rootbeer/Const;->knownDangerousAppsPackages:[Ljava/lang/String;

    const/16 v1, 0x9

    .line 31
    new-array v2, v1, [Ljava/lang/String;

    const-string v9, "com.devadvance.rootcloak"

    aput-object v9, v2, v3

    const-string v9, "com.devadvance.rootcloakplus"

    aput-object v9, v2, v4

    const-string v9, "de.robv.android.xposed.installer"

    aput-object v9, v2, v5

    const-string v9, "com.saurik.substrate"

    aput-object v9, v2, v6

    const-string v9, "com.zachspong.temprootremovejb"

    aput-object v9, v2, v7

    const-string v9, "com.amphoras.hidemyroot"

    aput-object v9, v2, v8

    const-string v9, "com.amphoras.hidemyrootadfree"

    aput-object v9, v2, v0

    const-string v9, "com.formyhm.hiderootPremium"

    const/4 v10, 0x7

    aput-object v9, v2, v10

    const-string v9, "com.formyhm.hideroot"

    const/16 v11, 0x8

    aput-object v9, v2, v11

    sput-object v2, Lcom/scottyab/rootbeer/Const;->knownRootCloakingPackages:[Ljava/lang/String;

    const/16 v2, 0xb

    .line 43
    new-array v2, v2, [Ljava/lang/String;

    const-string v9, "/data/local/"

    aput-object v9, v2, v3

    const-string v9, "/data/local/bin/"

    aput-object v9, v2, v4

    const-string v9, "/data/local/xbin/"

    aput-object v9, v2, v5

    const-string v9, "/sbin/"

    aput-object v9, v2, v6

    const-string v9, "/su/bin/"

    aput-object v9, v2, v7

    const-string v9, "/system/bin/"

    aput-object v9, v2, v8

    const-string v9, "/system/bin/.ext/"

    aput-object v9, v2, v0

    const-string v9, "/system/bin/failsafe/"

    aput-object v9, v2, v10

    const-string v9, "/system/sd/xbin/"

    aput-object v9, v2, v11

    const-string v9, "/system/usr/we-need-root/"

    aput-object v9, v2, v1

    const-string v1, "/system/xbin/"

    const/16 v9, 0xa

    aput-object v1, v2, v9

    sput-object v2, Lcom/scottyab/rootbeer/Const;->suPaths:[Ljava/lang/String;

    .line 58
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "/system"

    aput-object v2, v1, v3

    const-string v2, "/system/bin"

    aput-object v2, v1, v4

    const-string v2, "/system/sbin"

    aput-object v2, v1, v5

    const-string v2, "/system/xbin"

    aput-object v2, v1, v6

    const-string v2, "/vendor/bin"

    aput-object v2, v1, v7

    const-string v2, "/sbin"

    aput-object v2, v1, v8

    const-string v2, "/etc"

    aput-object v2, v1, v0

    sput-object v1, Lcom/scottyab/rootbeer/Const;->pathsThatShouldNotBeWrtiable:[Ljava/lang/String;

    return-void
.end method
