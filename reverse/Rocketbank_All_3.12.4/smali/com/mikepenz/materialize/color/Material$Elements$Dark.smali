.class public final enum Lcom/mikepenz/materialize/color/Material$Elements$Dark;
.super Ljava/lang/Enum;
.source "Material.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialize/color/Material$Elements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Dark"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mikepenz/materialize/color/Material$Elements$Dark;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mikepenz/materialize/color/Material$Elements$Dark;

.field public static final enum DISABLED_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

.field public static final enum DIVIDER:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

.field public static final enum HINT_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

.field public static final enum ICON:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

.field public static final enum SECONDARY_ICON:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

.field public static final enum SECONDARY_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

.field public static final enum TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Dark;


# instance fields
.field color:Ljava/lang/String;

.field resource:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 54
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    const-string v1, "ICON"

    const-string v2, "#8AFFFFFF"

    const/4 v3, 0x0

    const v4, 0x7f06011b

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/mikepenz/materialize/color/Material$Elements$Dark;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->ICON:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    .line 55
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    const-string v1, "TEXT"

    const-string v2, "#DEFFFFFF"

    const/4 v4, 0x1

    const v5, 0x7f06011c

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/mikepenz/materialize/color/Material$Elements$Dark;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    .line 56
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    const-string v1, "SECONDARY_TEXT"

    const-string v2, "#8AFFFFFF"

    const v5, 0x7f06011d

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/mikepenz/materialize/color/Material$Elements$Dark;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->SECONDARY_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    .line 57
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    const-string v1, "SECONDARY_ICON"

    const-string v2, "#8AFFFFFF"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/mikepenz/materialize/color/Material$Elements$Dark;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->SECONDARY_ICON:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    .line 58
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    const-string v1, "DISABLED_TEXT"

    const-string v2, "#42FFFFFF"

    const v5, 0x7f060119

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/mikepenz/materialize/color/Material$Elements$Dark;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->DISABLED_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    .line 59
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    const-string v1, "HINT_TEXT"

    const-string v2, "#42FFFFFF"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v5}, Lcom/mikepenz/materialize/color/Material$Elements$Dark;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->HINT_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    .line 60
    new-instance v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    const-string v1, "DIVIDER"

    const-string v2, "#1FFFFFFF"

    const/4 v5, 0x6

    const v10, 0x7f06011a

    invoke-direct {v0, v1, v5, v2, v10}, Lcom/mikepenz/materialize/color/Material$Elements$Dark;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->DIVIDER:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    const/4 v0, 0x7

    .line 53
    new-array v0, v0, [Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->ICON:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->SECONDARY_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->SECONDARY_ICON:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->DISABLED_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->HINT_TEXT:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    aput-object v1, v0, v9

    sget-object v1, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->DIVIDER:Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->$VALUES:[Lcom/mikepenz/materialize/color/Material$Elements$Dark;

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

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p3, p0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->color:Ljava/lang/String;

    .line 67
    iput p4, p0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->resource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mikepenz/materialize/color/Material$Elements$Dark;
    .locals 1

    .line 53
    const-class v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    return-object p0
.end method

.method public static values()[Lcom/mikepenz/materialize/color/Material$Elements$Dark;
    .locals 1

    .line 53
    sget-object v0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->$VALUES:[Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    invoke-virtual {v0}, [Lcom/mikepenz/materialize/color/Material$Elements$Dark;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mikepenz/materialize/color/Material$Elements$Dark;

    return-object v0
.end method


# virtual methods
.method public final getAsColor()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->color:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getAsResource()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->resource:I

    return v0
.end method

.method public final getAsString()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/mikepenz/materialize/color/Material$Elements$Dark;->color:Ljava/lang/String;

    return-object v0
.end method
