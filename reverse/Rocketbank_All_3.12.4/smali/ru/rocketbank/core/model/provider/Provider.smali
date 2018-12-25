.class public Lru/rocketbank/core/model/provider/Provider;
.super Ljava/lang/Object;
.source "Provider.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/provider/Provider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private category_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private commission:Z

.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/ProviderField;",
            ">;"
        }
    .end annotation
.end field

.field private icon:Ljava/lang/String;

.field private id:I

.field private max:I

.field private min:I

.field private name:Ljava/lang/String;

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    new-instance v0, Lru/rocketbank/core/model/provider/Provider$1;

    invoke-direct {v0}, Lru/rocketbank/core/model/provider/Provider$1;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/provider/Provider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/provider/Provider;->name:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/provider/Provider;->id:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/provider/Provider;->icon:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/provider/Provider;->min:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/provider/Provider;->max:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lru/rocketbank/core/model/provider/Provider;->commission:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lru/rocketbank/core/model/provider/Provider;->position:I

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/model/provider/Provider;->category_ids:Ljava/util/List;

    .line 154
    iget-object v0, p0, Lru/rocketbank/core/model/provider/Provider;->category_ids:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 155
    sget-object v0, Lru/rocketbank/core/model/provider/ProviderField;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/model/provider/Provider;->fields:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 111
    iget-object v0, p0, Lru/rocketbank/core/model/provider/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCategory_ids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lru/rocketbank/core/model/provider/Provider;->category_ids:Ljava/util/List;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/ProviderField;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lru/rocketbank/core/model/provider/Provider;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lru/rocketbank/core/model/provider/Provider;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 47
    iget v0, p0, Lru/rocketbank/core/model/provider/Provider;->id:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 71
    iget v0, p0, Lru/rocketbank/core/model/provider/Provider;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 63
    iget v0, p0, Lru/rocketbank/core/model/provider/Provider;->min:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lru/rocketbank/core/model/provider/Provider;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 87
    iget v0, p0, Lru/rocketbank/core/model/provider/Provider;->position:I

    return v0
.end method

.method public isCommission()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lru/rocketbank/core/model/provider/Provider;->commission:Z

    return v0
.end method

.method public setCategory_ids(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lru/rocketbank/core/model/provider/Provider;->category_ids:Ljava/util/List;

    return-void
.end method

.method public setCommission(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lru/rocketbank/core/model/provider/Provider;->commission:Z

    return-void
.end method

.method public setFields(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/provider/ProviderField;",
            ">;)V"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lru/rocketbank/core/model/provider/Provider;->fields:Ljava/util/List;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lru/rocketbank/core/model/provider/Provider;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 51
    iput p1, p0, Lru/rocketbank/core/model/provider/Provider;->id:I

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 75
    iput p1, p0, Lru/rocketbank/core/model/provider/Provider;->max:I

    return-void
.end method

.method public setMin(I)V
    .locals 0

    .line 67
    iput p1, p0, Lru/rocketbank/core/model/provider/Provider;->min:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lru/rocketbank/core/model/provider/Provider;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 91
    iput p1, p0, Lru/rocketbank/core/model/provider/Provider;->position:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Provider{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/core/model/provider/Provider;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/model/provider/Provider;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", category_ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lru/rocketbank/core/model/provider/Provider;->category_ids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lru/rocketbank/core/model/provider/Provider;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 131
    iget-object p2, p0, Lru/rocketbank/core/model/provider/Provider;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget p2, p0, Lru/rocketbank/core/model/provider/Provider;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object p2, p0, Lru/rocketbank/core/model/provider/Provider;->icon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget p2, p0, Lru/rocketbank/core/model/provider/Provider;->min:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget p2, p0, Lru/rocketbank/core/model/provider/Provider;->max:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-boolean p2, p0, Lru/rocketbank/core/model/provider/Provider;->commission:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 137
    iget p2, p0, Lru/rocketbank/core/model/provider/Provider;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object p2, p0, Lru/rocketbank/core/model/provider/Provider;->category_ids:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 139
    iget-object p2, p0, Lru/rocketbank/core/model/provider/Provider;->fields:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
