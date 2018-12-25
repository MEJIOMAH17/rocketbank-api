.class public final Lcom/mikepenz/materialdrawer/R$drawable;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/security/CertificateManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module$7940e6c:Lcom/mikepenz/materialdrawer/R$dimen;


# direct methods
.method public constructor <init>(Lcom/mikepenz/materialdrawer/R$dimen;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mikepenz/materialdrawer/R$dimen;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/R$drawable;->module$7940e6c:Lcom/mikepenz/materialdrawer/R$dimen;

    .line 1019
    iput-object p2, p0, Lcom/mikepenz/materialdrawer/R$drawable;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .line 2024
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/R$drawable;->contextProvider:Ljavax/inject/Provider;

    .line 2025
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3019
    new-instance v1, Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    invoke-direct {v1, v0}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;-><init>(Landroid/content/Context;)V

    check-cast v1, Lru/rocketbank/core/manager/security/CertificateManager;

    return-object v1
.end method
