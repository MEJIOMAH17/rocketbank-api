.class public final Lcom/mikepenz/materialdrawer/R$string;
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
    name = "string"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/DeliveryManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module$19fe5379:Lcom/mikepenz/materialdrawer/R$layout;


# direct methods
.method public constructor <init>(Lcom/mikepenz/materialdrawer/R$layout;)V
    .locals 0

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/R$string;->module$19fe5379:Lcom/mikepenz/materialdrawer/R$layout;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 3018
    new-instance v0, Lru/rocketbank/core/manager/DeliveryManager;

    invoke-direct {v0}, Lru/rocketbank/core/manager/DeliveryManager;-><init>()V

    .line 2018
    check-cast v0, Lru/rocketbank/core/manager/DeliveryManager;

    return-object v0
.end method
