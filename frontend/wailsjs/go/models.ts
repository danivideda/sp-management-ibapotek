export namespace dbsqlc {
	
	export class GetMinStockRow {
	    Kode: string;
	    Nama: sql.NullString;
	    DStok: string;
	    DStokMin: string;
	    Komposisi: sql.NullString;
	
	    static createFrom(source: any = {}) {
	        return new GetMinStockRow(source);
	    }
	
	    constructor(source: any = {}) {
	        if ('string' === typeof source) source = JSON.parse(source);
	        this.Kode = source["Kode"];
	        this.Nama = this.convertValues(source["Nama"], sql.NullString);
	        this.DStok = source["DStok"];
	        this.DStokMin = source["DStokMin"];
	        this.Komposisi = this.convertValues(source["Komposisi"], sql.NullString);
	    }
	
		convertValues(a: any, classs: any, asMap: boolean = false): any {
		    if (!a) {
		        return a;
		    }
		    if (a.slice && a.map) {
		        return (a as any[]).map(elem => this.convertValues(elem, classs));
		    } else if ("object" === typeof a) {
		        if (asMap) {
		            for (const key of Object.keys(a)) {
		                a[key] = new classs(a[key]);
		            }
		            return a;
		        }
		        return new classs(a);
		    }
		    return a;
		}
	}

}

export namespace sql {
	
	export class NullString {
	    String: string;
	    Valid: boolean;
	
	    static createFrom(source: any = {}) {
	        return new NullString(source);
	    }
	
	    constructor(source: any = {}) {
	        if ('string' === typeof source) source = JSON.parse(source);
	        this.String = source["String"];
	        this.Valid = source["Valid"];
	    }
	}

}

