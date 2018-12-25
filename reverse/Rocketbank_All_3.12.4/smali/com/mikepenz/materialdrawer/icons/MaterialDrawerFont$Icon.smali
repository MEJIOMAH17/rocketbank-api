.class public final enum Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;
.super Ljava/lang/Enum;
.source "MaterialDrawerFont.java"

# interfaces
.implements Lcom/mikepenz/iconics/typeface/IIcon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Icon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;",
        ">;",
        "Lcom/mikepenz/iconics/typeface/IIcon;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

.field public static final enum mdf_arrow_drop_down:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

.field public static final enum mdf_arrow_drop_up:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

.field public static final enum mdf_person:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

.field private static typeface:Lcom/mikepenz/iconics/typeface/ITypeface;


# instance fields
.field character:C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 111
    new-instance v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    const-string v1, "mdf_person"

    const/4 v2, 0x0

    const v3, 0xe800

    invoke-direct {v0, v1, v2, v3}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_person:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    .line 112
    new-instance v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    const-string v1, "mdf_arrow_drop_up"

    const/4 v3, 0x1

    const v4, 0xe801

    invoke-direct {v0, v1, v3, v4}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_arrow_drop_up:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    .line 113
    new-instance v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    const-string v1, "mdf_arrow_drop_down"

    const/4 v4, 0x2

    const v5, 0xe802

    invoke-direct {v0, v1, v4, v5}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_arrow_drop_down:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    const/4 v0, 0x3

    .line 110
    new-array v0, v0, [Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    sget-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_person:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_arrow_drop_up:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_arrow_drop_down:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->$VALUES:[Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    iput-char p3, p0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->character:C

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;
    .locals 1

    .line 110
    const-class v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    return-object p0
.end method

.method public static values()[Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;
    .locals 1

    .line 110
    sget-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->$VALUES:[Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    invoke-virtual {v0}, [Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    return-object v0
.end method


# virtual methods
.method public final getCharacter()C
    .locals 1

    .line 126
    iget-char v0, p0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->character:C

    return v0
.end method

.method public final getFormattedName()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeface()Lcom/mikepenz/iconics/typeface/ITypeface;
    .locals 1

    .line 137
    sget-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->typeface:Lcom/mikepenz/iconics/typeface/ITypeface;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont;-><init>()V

    sput-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->typeface:Lcom/mikepenz/iconics/typeface/ITypeface;

    .line 140
    :cond_0
    sget-object v0, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->typeface:Lcom/mikepenz/iconics/typeface/ITypeface;

    return-object v0
.end method
