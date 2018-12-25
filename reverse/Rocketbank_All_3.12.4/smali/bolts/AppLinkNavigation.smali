.class public final Lbolts/AppLinkNavigation;
.super Ljava/lang/Object;
.source "AppLinkNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/AppLinkNavigation$NavigationResult;
    }
.end annotation


# instance fields
.field public final icon:Lio/fabric/sdk/android/services/settings/AppIconSettingsData;

.field public final identifier:Ljava/lang/String;

.field public final ndkReportsUrl:Ljava/lang/String;

.field public final reportsUrl:Ljava/lang/String;

.field public final status:Ljava/lang/String;

.field public final updateRequired:Z

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/fabric/sdk/android/services/settings/AppIconSettingsData;)V
    .locals 0

    .line 1046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1047
    iput-object p1, p0, Lbolts/AppLinkNavigation;->identifier:Ljava/lang/String;

    .line 1048
    iput-object p2, p0, Lbolts/AppLinkNavigation;->status:Ljava/lang/String;

    .line 1049
    iput-object p3, p0, Lbolts/AppLinkNavigation;->url:Ljava/lang/String;

    .line 1050
    iput-object p4, p0, Lbolts/AppLinkNavigation;->reportsUrl:Ljava/lang/String;

    .line 1051
    iput-object p5, p0, Lbolts/AppLinkNavigation;->ndkReportsUrl:Ljava/lang/String;

    .line 1052
    iput-boolean p6, p0, Lbolts/AppLinkNavigation;->updateRequired:Z

    .line 1053
    iput-object p7, p0, Lbolts/AppLinkNavigation;->icon:Lio/fabric/sdk/android/services/settings/AppIconSettingsData;

    return-void
.end method
