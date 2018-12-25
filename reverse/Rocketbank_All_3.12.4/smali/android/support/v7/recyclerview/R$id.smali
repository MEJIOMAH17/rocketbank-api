.class public final Landroid/support/v7/recyclerview/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/recyclerview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final appId:Ljava/lang/String;

.field public final buildVersion:Ljava/lang/String;

.field public final builtSdkVersion:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final icon:Lio/fabric/sdk/android/services/settings/IconRequest;

.field public final instanceIdentifier:Ljava/lang/String;

.field public final minSdkVersion:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final sdkKits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/support/v7/cardview/R$dimen;",
            ">;"
        }
    .end annotation
.end field

.field public final source:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/settings/IconRequest;",
            "Ljava/util/Collection<",
            "Landroid/support/v7/cardview/R$dimen;",
            ">;)V"
        }
    .end annotation

    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    iput-object p1, p0, Landroid/support/v7/recyclerview/R$id;->apiKey:Ljava/lang/String;

    .line 1049
    iput-object p2, p0, Landroid/support/v7/recyclerview/R$id;->appId:Ljava/lang/String;

    .line 1050
    iput-object p3, p0, Landroid/support/v7/recyclerview/R$id;->displayVersion:Ljava/lang/String;

    .line 1051
    iput-object p4, p0, Landroid/support/v7/recyclerview/R$id;->buildVersion:Ljava/lang/String;

    .line 1053
    iput-object p5, p0, Landroid/support/v7/recyclerview/R$id;->instanceIdentifier:Ljava/lang/String;

    .line 1054
    iput-object p6, p0, Landroid/support/v7/recyclerview/R$id;->name:Ljava/lang/String;

    .line 1055
    iput p7, p0, Landroid/support/v7/recyclerview/R$id;->source:I

    .line 1056
    iput-object p8, p0, Landroid/support/v7/recyclerview/R$id;->minSdkVersion:Ljava/lang/String;

    .line 1057
    iput-object p9, p0, Landroid/support/v7/recyclerview/R$id;->builtSdkVersion:Ljava/lang/String;

    .line 1058
    iput-object p10, p0, Landroid/support/v7/recyclerview/R$id;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    .line 1059
    iput-object p11, p0, Landroid/support/v7/recyclerview/R$id;->sdkKits:Ljava/util/Collection;

    return-void
.end method
