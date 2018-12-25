.class public final enum Lcom/mikepenz/materialize/color/Material$White;
.super Ljava/lang/Enum;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialize/color/Material;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "White"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mikepenz/materialize/color/Material$White;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mikepenz/materialize/color/Material$White;

.field public static final enum _1000:Lcom/mikepenz/materialize/color/Material$White;


# instance fields
.field color:Ljava/lang/String;

.field resource:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 885
    new-instance v0, Lcom/mikepenz/materialize/color/Material$White;

    const-string v1, "_1000"

    const-string v2, "#FFFFFF"

    const/4 v3, 0x0

    const v4, 0x7f0601dc

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/mikepenz/materialize/color/Material$White;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$White;->_1000:Lcom/mikepenz/materialize/color/Material$White;

    const/4 v0, 0x1

    .line 883
    new-array v0, v0, [Lcom/mikepenz/materialize/color/Material$White;

    sget-object v1, Lcom/mikepenz/materialize/color/Material$White;->_1000:Lcom/mikepenz/materialize/color/Material$White;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mikepenz/materialize/color/Material$White;->$VALUES:[Lcom/mikepenz/materialize/color/Material$White;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 890
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 891
    iput-object p3, p0, Lcom/mikepenz/materialize/color/Material$White;->color:Ljava/lang/String;

    .line 892
    iput p4, p0, Lcom/mikepenz/materialize/color/Material$White;->resource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mikepenz/materialize/color/Material$White;
    .locals 1

    .line 883
    const-class v0, Lcom/mikepenz/materialize/color/Material$White;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mikepenz/materialize/color/Material$White;

    return-object p0
.end method

.method public static values()[Lcom/mikepenz/materialize/color/Material$White;
    .locals 1

    .line 883
    sget-object v0, Lcom/mikepenz/materialize/color/Material$White;->$VALUES:[Lcom/mikepenz/materialize/color/Material$White;

    invoke-virtual {v0}, [Lcom/mikepenz/materialize/color/Material$White;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mikepenz/materialize/color/Material$White;

    return-object v0
.end method


# virtual methods
.method public final getAsColor()I
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/mikepenz/materialize/color/Material$White;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getAsResource()I
    .locals 1

    .line 907
    iget v0, p0, Lcom/mikepenz/materialize/color/Material$White;->resource:I

    return v0
.end method

.method public final getAsString()Ljava/lang/String;
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/mikepenz/materialize/color/Material$White;->color:Ljava/lang/String;

    return-object v0
.end method
