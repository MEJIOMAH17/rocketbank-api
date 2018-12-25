.class public final enum Lcom/mikepenz/materialize/color/Material$Elements$Light;
.super Ljava/lang/Enum;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialize/color/Material$Elements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Light"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mikepenz/materialize/color/Material$Elements$Light;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mikepenz/materialize/color/Material$Elements$Light;

.field public static final enum DISABLED_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Light;

.field public static final enum DIVIDER:Lcom/mikepenz/materialize/color/Material$Elements$Light;

.field public static final enum HINT_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Light;

.field public static final enum ICON:Lcom/mikepenz/materialize/color/Material$Elements$Light;

.field public static final enum SECONDARY_ICON:Lcom/mikepenz/materialize/color/Material$Elements$Light;

.field public static final enum SECONDARY_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Light;

.field public static final enum TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Light;


# instance fields
.field color:Ljava/lang/String;

.field resource:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 18
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;

    const-string v1, "ICON"

    const-string v2, "#8A000000"

    const/4 v3, 0x0

    const v4, 0x7f060184

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/mikepenz/materialize/color/Material$Elements$Light;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->ICON:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    .line 19
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;

    const-string v1, "TEXT"

    const-string v2, "#DE000000"

    const/4 v4, 0x1

    const v5, 0x7f060185

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/mikepenz/materialize/color/Material$Elements$Light;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    .line 20
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;

    const-string v1, "SECONDARY_TEXT"

    const-string v2, "#8A000000"

    const v5, 0x7f060186

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/mikepenz/materialize/color/Material$Elements$Light;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->SECONDARY_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    .line 21
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;

    const-string v1, "SECONDARY_ICON"

    const-string v2, "#8A000000"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/mikepenz/materialize/color/Material$Elements$Light;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->SECONDARY_ICON:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    .line 22
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;

    const-string v1, "DISABLED_TEXT"

    const-string v2, "#42000000"

    const v5, 0x7f060174

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/mikepenz/materialize/color/Material$Elements$Light;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->DISABLED_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    .line 23
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;

    const-string v1, "HINT_TEXT"

    const-string v2, "#42000000"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v5}, Lcom/mikepenz/materialize/color/Material$Elements$Light;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->HINT_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    .line 24
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;

    const-string v1, "DIVIDER"

    const-string v2, "#1F000000"

    const/4 v5, 0x6

    const v10, 0x7f060175

    invoke-direct {v0, v1, v5, v2, v10}, Lcom/mikepenz/materialize/color/Material$Elements$Light;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->DIVIDER:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    const/4 v0, 0x7

    .line 17
    new-array v0, v0, [Lcom/mikepenz/materialize/color/Material$Elements$Light;

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Light;->ICON:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Light;->TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Light;->SECONDARY_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Light;->SECONDARY_ICON:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Light;->DISABLED_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Light;->HINT_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    aput-object v1, v0, v9

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Light;->DIVIDER:Lcom/mikepenz/materialize/color/Material$Elements$Light;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->$VALUES:[Lcom/mikepenz/materialize/color/Material$Elements$Light;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->color:Ljava/lang/String;

    .line 31
    iput p4, p0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->resource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mikepenz/materialize/color/Material$Elements$Light;
    .locals 1

    .line 17
    const-class v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mikepenz/materialize/color/Material$Elements$Light;

    return-object p0
.end method

.method public static values()[Lcom/mikepenz/materialize/color/Material$Elements$Light;
    .locals 1

    .line 17
    sget-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->$VALUES:[Lcom/mikepenz/materialize/color/Material$Elements$Light;

    invoke-virtual {v0}, [Lcom/mikepenz/materialize/color/Material$Elements$Light;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mikepenz/materialize/color/Material$Elements$Light;

    return-object v0
.end method


# virtual methods
.method public final getAsColor()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getAsResource()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->resource:I

    return v0
.end method

.method public final getAsString()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mikepenz/materialize/color/Material$Elements$Light;->color:Ljava/lang/String;

    return-object v0
.end method
