.class public final Lcom/mikepenz/materialize/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mikepenz/materialize/R$styleable;,
        Lcom/mikepenz/materialize/R$layout;,
        Lcom/mikepenz/materialize/R$id;,
        Lcom/mikepenz/materialize/R$dimen;,
        Lcom/mikepenz/materialize/R$color;,
        Lcom/mikepenz/materialize/R$attr;
    }
.end annotation


# instance fields
.field private final mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

.field private mKeyboardUtil:Lcom/mikepenz/materialize/util/KeyboardUtil;


# direct methods
.method protected constructor <init>(Lcom/mikepenz/materialize/MaterializeBuilder;)V
    .locals 1

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1014
    iput-object v0, p0, Lcom/mikepenz/materialize/R;->mKeyboardUtil:Lcom/mikepenz/materialize/util/KeyboardUtil;

    .line 1022
    iput-object p1, p0, Lcom/mikepenz/materialize/R;->mBuilder:Lcom/mikepenz/materialize/MaterializeBuilder;

    return-void
.end method
