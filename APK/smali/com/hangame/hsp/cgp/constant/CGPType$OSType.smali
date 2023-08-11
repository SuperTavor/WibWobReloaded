.class public final enum Lcom/hangame/hsp/cgp/constant/CGPType$OSType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

.field public static final enum ANDROID:Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

.field public static final enum I_OS:Lcom/hangame/hsp/cgp/constant/CGPType$OSType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    const-string v1, "I_OS"

    invoke-direct {v0, v1, v3, v2}, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->I_OS:Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    new-instance v0, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v2, v4}, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->ANDROID:Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    new-array v0, v4, [Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->I_OS:Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->ANDROID:Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->$VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/cgp/constant/CGPType$OSType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/cgp/constant/CGPType$OSType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->$VALUES:[Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/cgp/constant/CGPType$OSType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/cgp/constant/CGPType$OSType;->value:I

    return v0
.end method
