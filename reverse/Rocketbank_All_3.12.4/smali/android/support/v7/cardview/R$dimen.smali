.class public final Landroid/support/v7/cardview/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/cardview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# instance fields
.field private final buildType:Ljava/lang/String;

.field private final identifier:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    iput-object p1, p0, Landroid/support/v7/cardview/R$dimen;->identifier:Ljava/lang/String;

    .line 1027
    iput-object p2, p0, Landroid/support/v7/cardview/R$dimen;->version:Ljava/lang/String;

    .line 1028
    iput-object p3, p0, Landroid/support/v7/cardview/R$dimen;->buildType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBuildType()Ljava/lang/String;
    .locals 1

    .line 1040
    iget-object v0, p0, Landroid/support/v7/cardview/R$dimen;->buildType:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1032
    iget-object v0, p0, Landroid/support/v7/cardview/R$dimen;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 1036
    iget-object v0, p0, Landroid/support/v7/cardview/R$dimen;->version:Ljava/lang/String;

    return-object v0
.end method
